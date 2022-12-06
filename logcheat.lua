-----------------------------------------------------------------------------------------
-- Calculates various timing factors of mining operations involving valuable ores
--
-- See README.txt for licensing and release notes.
-- Copyright (c) 2017-2019, Leslie E. Kraus
--
-- lua logcheat.lua [inputfile] [pstep] [phorz] [pvert]
--   pfile = debug file to read
--   pstep = maximum time for a single mining operation (10-15 is average)
--   phorz = range of x and z to exclude in search (0 for full range)
--   pvert = range of y to exclude in search (0 for full range)
-----------------------------------------------------------------------------------------

local pfile = arg[ 1 ]
local pstep = tonumber( arg[ 2 ] )
local phorz = tonumber( arg[ 3 ] )
local pvert = tonumber( arg[ 4 ] )
local plist = { }
local next_time
local last_time

-- settings for detection sensitivity
local warn_max = 40
local warn_avg = 1.5
local warn_cnt = 50

function update_player( player, time, node )
	local p = not plist[ player ] and insert_player( player ) or plist[ player ]

	if not p.nlist[ node ] then
		return
	end

	-- if dig is recent, calculate average
	if p.time and time - p.time < pstep then
		p.sum = p.sum + ( time - p.time )
		p.len = p.len + 1
		p.avg = ( p.avg + ( p.sum / p.len ) ) / 2
		p.max = math.max( p.max, p.len )
	-- otherwise reset for next dig
	else
		p.len = 0
		p.sum = 0
		p.cnt = p.cnt + 1
	end
	p.time = time
	p.nlist[ node ] = p.nlist[ node ] + 1

	if not p.last then
		p.last = time
	end
	p.next = time

--	print( p.time, p.sum, p.len, p.avg, p.max )
end

function insert_player( p )
	plist[ p ] = { }
	plist[ p ].sum = 0
	plist[ p ].len = 0
	plist[ p ].avg = 5
	plist[ p ].max = 0
	plist[ p ].cnt = 0
	plist[ p ].nlist = { }
	plist[ p ].nlist[ "default:obsidian" ] = 0
	plist[ p ].nlist[ "nyancat:nyancat_rainbow" ] = 0
	plist[ p ].nlist[ "default:stone_with_diamond" ] = 0
	plist[ p ].nlist[ "default:stone_with_mese" ] = 0
	return plist[ p ]
end

function print_results( )
	local d

	print( string.rep( "-", 140 ) )
	print( string.format( "%-25s %4s %4s %6s %4s %20s %20s %20s %20s", "player", "len", "cnt", "avg", "max", "stone_with_mese", "stone_with_diamond", "obsidian", "nyancat_rainbow" ) )
	print( string.rep( "-", 140 ) )

	for n, p in pairs( plist ) do
		if p.cnt > 0 then
			d = math.ceil( ( p.next - p.last ) / 86400 )
			d = math.max( 1, d )
			print( string.format( "%-30s %4d %4d %6.2f %4d %20d %20d %20d %20d\27[00m",
				( p.avg < warn_avg and p.max > warn_max or p.cnt / d > warn_cnt ) and "\27[33m" .. n or "\27[90m" .. n, d, p.cnt, p.avg, p.max,
				p.nlist[ "default:stone_with_mese" ],
				p.nlist[ "default:stone_with_diamond" ],
				p.nlist[ "default:obsidian" ],
				p.nlist[ "nyancat:nyancat_rainbow" ]
			) )
		end
	end
	print( string.rep( "-", 140 ) )

	-- TODO: should really count actual number of days mining, not days between first and last mining operation
	print( "cnt = total mining operations (more than " .. warn_cnt .. " per day is suspicious)" )
	print( "avg = average time between digs (less than " .. warn_avg .. " is suspicious)" )
	print( "max = maximum digs per mining operation (more than " .. warn_max .. " is suspicious)" )
end


print( "file:", pfile, "step:", pstep, "horz:", phorz, "vert:", pvert )

local data = io.open( pfile, "r")
if data then
	local y, m, d, h, i, s, p, n, px, py, pz
--	print( "time", "", "sum", "len", "avg", "max" )

	for c in data:lines( ) do
		-- 2016-12-23 20:20:23: ACTION[Server]: sorcerykid digs default:stone at (-200,-297,546)
		y, m, d, h, i, s, p, n, px, py, pz = string.match( c, "^(....)-(..)-(..) (..):(..):(..): ACTION%[Server%]: (.-) digs (.+:.+) at %((.+),(.+),(.+)%)$" )
		if p then
			x = tonumber( x )
			y = tonumber( y )
			z = tonumber( z )
			if math.abs( px ) >= phorz and math.abs( py ) >= pvert and math.abs( pz ) >= phorz then
				update_player( p, os.time( { year = y, month = m, day = d, hour = h, min = i, sec = s } ), n )
			end
		end
	end
	io.close( data )

	print_results( )
else
	print( string.format( "Cannot open %s for reading", pfile ) )
end

#/bin/bash
cd /opt/minetest/Tutorial
docker-compose stop
rm debug.txt
rm -R /opt/minetest/Tutorial/worlds/Tutorial
cp -R /opt/minetest/_vorlagen/Tutorial /opt/minetest/Tutorial/worlds/
docker-compose start

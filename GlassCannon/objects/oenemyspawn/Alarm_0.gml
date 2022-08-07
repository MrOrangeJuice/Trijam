/// @description Spawn Enemy

instance_create_layer(x,y,"Instances",oEnemy);
alarm[0] = room_speed * spawnTime;
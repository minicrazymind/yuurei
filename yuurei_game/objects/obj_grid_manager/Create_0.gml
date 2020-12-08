globalvar TILE_SIZE;
TILE_SIZE = 8
 
globalvar GRID_WIDTH;
globalvar GRID_HEIGHT;
GRID_WIDTH = room_width/TILE_SIZE
GRID_HEIGHT = room_height/TILE_SIZE

globalvar PATH_GRID;
PATH_GRID = mp_grid_create(0,0,GRID_WIDTH,GRID_HEIGHT,TILE_SIZE,TILE_SIZE)

alarm[0] = 1



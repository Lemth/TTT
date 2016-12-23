/// @description Check for game winning condition
// You can write your code in this editor

if(init) {
    with(obj_room) {
        other.grid[xx,yy]=self;
    }
    init=false;
}


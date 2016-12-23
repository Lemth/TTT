/// @description Check for game winning condition
// You can write your code in this editor

if(init) {
    with(obj_room) {
        other.grid[xx,yy]=self;
    }
    init=false;
}

if(winning==false) {
    
//verticals
if(grid[1,1].color==grid[1,2].color && grid[1,1].color==grid[1,3].color)) { wincolor=grid[1,1].color; winning=true; }
if(grid[2,1].color==grid[2,2].color && grid[2,1].color==grid[2,3].color)) { wincolor=grid[2,1].color; winning=true; }
if(grid[3,1].color==grid[3,2].color && grid[3,1].color==grid[3,3].color)) { wincolor=grid[3,1].color; winning=true; }

//horizontals
if(grid[1,1].color==grid[2,1].color && grid[1,1].color==grid[3,1].color)) { wincolor=grid[1,1].color; winning=true; }
if(grid[1,2].color==grid[2,2].color && grid[1,2].color==grid[3,2].color)) { wincolor=grid[1,2].color; winning=true; }
if(grid[1,3].color==grid[2,3].color && grid[1,3].color==grid[3,3].color)) { wincolor=grid[1,3].color; winning=true; }

//diagonals
if(grid[1,1].color==grid[2,2].color && grid[1,1].color==grid[3,3].color)) { wincolor=grid[1,1].color; winning=true; }
if(grid[3,1].color==grid[2,2].color && grid[3,1].color==grid[1,3].color)) { wincolor=grid[3,1].color; winning=true; }
    
}


// draw event: !!!!!!!!!!!!!!!!!!!!!!!!!

if(winning) {

    if(color==c_yellow) { color="YELLOW"; }
    if(color==c_red) { color="RED"; }
    if(color==c_blue) { color="BLUE"; }
    if(color==c_green) { color="GREEN"; }
    
    
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(room_width/2,room_height/2,"Player "+color+" has Tic-Tac-Toe\'d y\'all!!");
   draw_set_color(c_white);
          
          }

// DRAW EVENT
draw_set_color(color);
if(color==c_white) {
  draw_self();
} else {
  draw_rectangle(x,y,x+sprite_width,y+sprite_height,false);
}
draw_set_color(c_white);

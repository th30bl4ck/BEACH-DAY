var b = global.battle;

var x0 = 20;
var y0 = 420;
var w = 140;
var h = 80;

for (var i=0;i<array_length(b.hand);i++) {
    var cx = x0 + i*(w+10);
    var cy = y0;

    if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x, y, x+w, y+h)) {
        scr_battle_play_card(b, i);
        break;
    }
}

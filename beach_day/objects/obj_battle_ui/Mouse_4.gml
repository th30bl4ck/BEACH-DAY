var b = global.battle;
if (is_undefined(b)) return;

var hand_count = array_length(b.hand);
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var card_w = 160;
var card_h = 110;
var gap = 12;
var total_w = (hand_count * card_w) + (max(0, hand_count - 1) * gap);
var start_cx = (gui_w - total_w) * 0.5;
var base_cy = gui_h - card_h - 40;
var mouse_cx = device_mouse_x_to_gui(0);
var mouse_cy = device_mouse_y_to_gui(0);

for (var i = 0; i < hand_count; i++) {
    var cx = start_cx + i * (card_w + gap);
    var cy = base_cy;

    if (point_in_rectangle(mouse_cx, mouse_cy, cx, cy, cx + card_w, cy + card_h)) {
        scr_battle_play_card(global.battle, i);
        break;
    }
}

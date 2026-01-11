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
    var card_inst = b.hand[i];
    var def = scr_get_card_def(card_inst.def_id);
    var can_play = b.player.energy >= def.cost;
    var hovering = point_in_rectangle(mouse_cx, mouse_cy, cx, cy, cx + card_w, cy + card_h);

    if (can_play) {
        draw_set_color(make_color_rgb(40, 48, 60));
        draw_set_alpha(1);
    } else {
        draw_set_color(make_color_rgb(30, 32, 36));
        draw_set_alpha(0.5);
    }

    draw_rectangle(cx, cy, cx + card_w, cy + card_h, false);
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(10, 10, 12));
    draw_rectangle(cx, cy, cx + card_w, cy + card_h, true);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    draw_text(cx + 8, cy + 8, def.name);

    draw_set_halign(fa_right);
    draw_text(cx + card_w - 8, cy + 8, string(def.cost));

    draw_set_halign(fa_left);
    draw_set_color(make_color_rgb(180, 200, 220));
    draw_text(cx + 8, cy + 30, scr_tags_to_string(def.tags));

    draw_set_color(make_color_rgb(220, 220, 220));
    draw_text(cx + 8, cy + 52, scr_effects_to_string(def.effects));

    if (hovering) {
        draw_set_alpha(0.2);
        draw_set_color(c_yellow);
        draw_rectangle(cx, cy, cx + card_w, cy + card_h, false);
        draw_set_alpha(1);
    }
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);
draw_set_color(c_white);

function scr_battle_start_turn(){
function scr_battle_start_turn(b) {
    // reset energy, clear block decay rules later
    b.player.energy = 3;
    // draw 5 each turn (adjust later)
    scr_battle_draw(b, 5);
}

}
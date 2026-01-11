function scr_battle_check_end(){
function scr_battle_check_end(b) {
    if (b.enemy.hp <= 0) {
        b.phase = scr_constants().PHASE_REWARD;
        // later: apply imprint, rewards, etc.
    }
    if (b.player.hp <= 0) {
        // run ends for now
        b.phase = -1;
    }
}

}
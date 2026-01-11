function scr_battle_enemy_act(){
function scr_battle_enemy_act(b) {
    // clear enemy block each round? up to you; keep for now
    // enemy chooses intent
    var idx = b.enemy.intent_index mod array_length(b.enemy.intents);
    var intent = b.enemy.intents[idx];
    b.enemy.intent_index++;

    switch (intent.t) {
        case "dmg":
            var dmg = intent.v;
            var blocked = min(b.player.block, dmg);
            b.player.block -= blocked;
            b.player.hp -= (dmg - blocked);
        break;

        case "block":
            b.enemy.block += intent.v;
        break;
    }
}

}
function scr_battle_play_card(b, hand_index) {
    if (hand_index < 0 || hand_index >= array_length(b.hand)) return;

    var card_inst = b.hand[hand_index];
    var def = scr_get_card_def(card_inst.def_id);

    // cost check
    if (b.player.energy < def.cost) return;

    // pay
    b.player.energy -= def.cost;

    // imprint hooks (later)
    // scr_imprint_apply_on_play(global.run, b, card_inst, def);

    // enqueue effects
    for (var i=0; i<array_length(def.effects); i++) {
        scr_battle_queue_effect(b, def.effects[i], card_inst);
    }

    // move card to discard
    array_push(b.discard, card_inst);
    array_delete(b.hand, hand_index, 1);

    // resolve immediately (simple version)
    scr_battle_resolve(b);
    scr_battle_check_end(b);
}


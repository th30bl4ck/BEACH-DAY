function scr_battle_new(run, enemy_id) {
    var C = scr_constants();

    var b = {
        phase: C.PHASE_PLAYER,
        env: scr_make_env(run.env_id),

        player: { hp:40, hp_max:40, block:0, energy:3 },
        enemy: scr_make_enemy(enemy_id),

        draw_pile: [],
        hand: [],
        discard: [],
        queue: []
    };

    // copy run deck into draw pile (instances)
    b.draw_pile = array_copy(run.deck, 0, array_length(run.deck));
    scr_battle_shuffle(b);
    scr_battle_draw(b, 5);

    return b;
}


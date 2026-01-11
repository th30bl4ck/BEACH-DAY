function scr_battle_draw(b, n) {
    for (var i = 0; i < n; i++) {
        if (array_length(b.draw_pile) == 0) {
            // reshuffle discard into draw
            b.draw_pile = b.discard;
            b.discard = [];
            if (array_length(b.draw_pile) == 0) return;
            scr_battle_shuffle(b);
        }

        var card = b.draw_pile[0];
        array_delete(b.draw_pile, 0, 1);
        array_push(b.hand, card);
    }
}

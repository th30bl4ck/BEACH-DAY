function scr_battle_draw(b, n) {
    for (var i=0;i<n;i++) {
        if (array_length(b.draw_pile) == 0) {
            // reshuffle discard into draw
            b.draw_pile = array_copy(b.discard, 0, array_length(b.discard));
            b.discard = [];
            if (array_length(b.draw_pile) == 0) return;
            scr_battle_shuffle(b);
        }
        var card = scr_array_pop_front(b.draw_pile);
        array_push(b.hand, card);
    }
}


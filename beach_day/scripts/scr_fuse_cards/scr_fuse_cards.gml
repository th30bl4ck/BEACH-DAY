function scr_fuse_cards(run, uid_a, uid_b) {
    var idx_a = -1, idx_b = -1;
    for (var i=0;i<array_length(run.deck);i++) {
        if (run.deck[i].uid == uid_a) idx_a = i;
        if (run.deck[i].uid == uid_b) idx_b = i;
    }
    if (idx_a == -1 || idx_b == -1 || idx_a == idx_b) return false;

    var a = run.deck[idx_a];
    var b = run.deck[idx_b];

    // new card is a copy of a, but gains a mod (instability) and “inherits” b’s def_id as a note
    var fused = { uid:scr_uid(), def_id:a.def_id, mods:[] };
    array_push(fused.mods, {t:"fused_with", def_id:b.def_id});
    array_push(fused.mods, {t:"instability", roll:irandom(100)});

    // remove higher index first
    if (idx_a > idx_b) { var tmp=idx_a; idx_a=idx_b; idx_b=tmp; }
    array_delete(run.deck, idx_b, 1);
    array_delete(run.deck, idx_a, 1);
    array_push(run.deck, fused);

    return true;
}


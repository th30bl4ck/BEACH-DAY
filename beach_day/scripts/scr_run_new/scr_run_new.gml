function scr_run_new() {
    var run = {
        deck: [],
        imprints: [],
        env_id: "ruins",
        seed: irandom(9999999)
    };

    // Starter deck: 5 strike, 5 defend, 1 weird
    for (var i=0;i<5;i++) array_push(run.deck, scr_make_card_instance("strike"));
    for (var i=0;i<5;i++) array_push(run.deck, scr_make_card_instance("defend"));
    array_push(run.deck, scr_make_card_instance("weird_tide"));

    return run;
}


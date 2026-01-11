function scr_imprint_apply_on_play(run, b, card_inst, card_def) {
    // Salt Burn: attacks +1 damage, but take 1 after playing an attack
    for (var i=0;i<array_length(run.imprints);i++) {
        var imp = run.imprints[i];
        if (imp.id == "salt_burn") {
            if (scr_has_tag(card_def.tags, "attack")) {
                // add +1 dmg by pushing a bonus effect first
                scr_battle_queue_effect(b, {t:"dmg", v:1, target:"enemy"}, card_inst);
                // self damage: implement effect or just apply directly
                b.player.hp -= 1;
            }
        }
    }
}


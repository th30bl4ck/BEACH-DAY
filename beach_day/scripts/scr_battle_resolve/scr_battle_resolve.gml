function scr_battle_resolve(){
function scr_battle_apply_env_to_damage(b, source_card, dmg) {
    // RUINS: if source card has tag "weird", +2 damage
    var def = scr_get_card_def(source_card.def_id);
    if (b.env.id == "ruins") {
        if (scr_has_tag(def.tags, "weird")) dmg += 2;
    }
    return dmg;
}

function scr_battle_resolve(b) {
    while (array_length(b.queue) > 0) {
        var item = scr_array_pop_front(b.queue);
        var e = item.eff;

        switch (e.t) {
            case "dmg":
                var dmg = e.v;
                dmg = scr_battle_apply_env_to_damage(b, item.source, dmg);

                // apply to enemy with block
                var blocked = min(b.enemy.block, dmg);
                b.enemy.block -= blocked;
                b.enemy.hp -= (dmg - blocked);
            break;

            case "block":
                b.player.block += e.v;
            break;

            case "draw":
                scr_battle_draw(b, e.v);
            break;
        }
    }
}

}
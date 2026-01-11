function scr_enemy_db() {
    return {
        acolyte: { id:"acolyte", name:"Acolyte", hp:30,
                   intents:[
                      {t:"dmg", v:5},
                      {t:"block", v:4}
                   ]
        }
    };
}

function scr_make_enemy(enemy_id) {
    var db = scr_enemy_db();
    var def = variable_struct_get(db, enemy_id);
    return {
        id:def.id, name:def.name,
        hp:def.hp, hp_max:def.hp,
        block:0,
        intent_index:0,
        intents:def.intents
    };
}


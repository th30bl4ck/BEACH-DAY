function scr_env_db(){
function scr_env_db() {
    return {
        ruins: { id:"ruins", name:"The Ruins",
                // example: weird attacks +2 damage
                rules:[ {t:"weird_bonus_dmg", v:2} ]
        }
    };
}

function scr_make_env(env_id) {
    var db = scr_env_db();
    return variable_struct_get(db, env_id);
}

}
function scr_card_db(){
function scr_card_db() {
    return {
        strike: {
            id:"strike", name:"Strike", cost:1,
            tags:["attack"],
            effects:[ {t:"dmg", v:6, target:"enemy"} ]
        },

        defend: {
            id:"defend", name:"Defend", cost:1,
            tags:["skill"],
            effects:[ {t:"block", v:5, target:"player"} ]
        },

        weird_tide: {
            id:"weird_tide", name:"Weird Tide", cost:1,
            tags:["attack","weird"],
            effects:[ {t:"dmg", v:4, target:"enemy"}, {t:"draw", v:1, target:"player"} ]
        }
    };
}

function scr_make_card_instance(def_id) {
    return { uid:scr_uid(), def_id:def_id, mods:[] };
}

function scr_get_card_def(def_id) {
    var db = scr_card_db();
    return variable_struct_get(db, def_id);
}

}
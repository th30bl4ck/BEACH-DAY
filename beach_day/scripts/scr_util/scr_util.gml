function scr_uid() {
    return string(current_time) + "_" + string(random(1000000));
}

function scr_has_tag(tags_array, tag) {
    for (var i = 0; i < array_length(tags_array); i++) {
        if (tags_array[i] == tag) return true;
    }
    return false;
}

function scr_tags_to_string(tags) {
    var count = array_length(tags);
    if (count == 0) return "";

    var text = string(tags[0]);
    for (var i = 1; i < count; i++) {
        text += ", " + string(tags[i]);
    }

    return text;
}

function scr_effects_to_string(effects) {
    var count = array_length(effects);
    if (count == 0) return "";

    var parts = [];
    for (var i = 0; i < count; i++) {
        var effect = effects[i];
        var label = "";

        switch (effect.t) {
            case "dmg":
                label = "Deal ";
                break;
            case "block":
                label = "Block ";
                break;
            case "draw":
                label = "Draw ";
                break;
            default:
                label = string(effect.t) + " ";
                break;
        }

        parts[i] = label + string(effect.v);
    }

    var text = parts[0];
    for (var j = 1; j < array_length(parts); j++) {
        text += " | " + parts[j];
    }

    return text;
}

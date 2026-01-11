global.C = scr_constants();

global.run = scr_run_load();
if (is_undefined(global.run)) global.run = scr_run_new();

global.battle = scr_battle_new(global.run, "acolyte");

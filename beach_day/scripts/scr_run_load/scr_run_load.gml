function scr_run_load() {
    if (!file_exists("save_run.json")) return undefined;
    var f = file_text_open_read("save_run.json");
    var json = file_text_read_string(f);
    file_text_close(f);
    return json_parse(json);
}


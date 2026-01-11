function scr_run_save(run) {
    var json = json_stringify(run);
    var f = file_text_open_write("save_run.json");
    file_text_write_string(f, json);
    file_text_close(f);
}


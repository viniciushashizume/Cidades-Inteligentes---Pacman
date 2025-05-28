function scr_astarpath(startX, startY, endX, endY) {
    var open = ds_priority_create();
    var closed = ds_map_create();
    var came_from = ds_map_create();
    var g_score = ds_map_create();
    var f_score = ds_map_create();

    var start_key = string(startX) + "," + string(startY);
    ds_priority_add(open, start_key, 0);
    ds_map_add(g_score, start_key, 0);
    ds_map_add(f_score, start_key, scr_heuristic(startX, startY, endX, endY));

    while (!ds_priority_empty(open)) {
        var current = ds_priority_find_min(open);
        ds_priority_delete_min(open);

        var cx = real(string_copy(current, 1, string_pos(",", current) - 1));
        var cy = real(string_copy(current, string_pos(",", current) + 1, string_length(current)));

        if (cx == endX && cy == endY) {
            var path = [];
            while (ds_map_exists(came_from, current)) {
                array_insert(path, 0, current);
                current = ds_map_find_value(came_from, current);
            }
            array_insert(path, 0, start_key);
            ds_priority_destroy(open);
            ds_map_destroy(closed);
            ds_map_destroy(g_score);
            ds_map_destroy(f_score);
            ds_map_destroy(came_from);
            return path;
        }

        ds_map_add(closed, current, true);

        var dirs = [[1,0], [-1,0], [0,1], [0,-1]];
        for (var i = 0; i < 4; i++) {
            var nx = cx + dirs[i][0];
            var ny = cy + dirs[i][1];

            if (!place_free(nx * 32, ny * 32)) continue;

            var neighbor = string(nx) + "," + string(ny);
            if (ds_map_exists(closed, neighbor)) continue;

            var tentative_g = ds_map_find_value(g_score, current) + 1;

            if (!ds_map_exists(g_score, neighbor) || tentative_g < ds_map_find_value(g_score, neighbor)) {
                ds_map_add(came_from, neighbor, current);
                ds_map_add(g_score, neighbor, tentative_g);
                var f = tentative_g + scr_heuristic(nx, ny, endX, endY);
                ds_map_add(f_score, neighbor, f);
                ds_priority_add(open, neighbor, f);
            }
        }
    }

    ds_priority_destroy(open);
    ds_map_destroy(closed);
    ds_map_destroy(g_score);
    ds_map_destroy(f_score);
    ds_map_destroy(came_from);
    return [];
}
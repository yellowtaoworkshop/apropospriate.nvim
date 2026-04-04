local M = {}

function M.get_palette(bg)
    local c
    if bg == "light" then
        c = {
            base00   = "#F5F5F5",
            base01   = "#90A4AE",
            base02   = "#78909C",
            base03   = "#546E7A",
            yellow   = "#F57F17",
            yellow_1 = "#F9A725",
            brown    = "#4E342E",
            brown_1  = "#6D4C41",
            orange   = "#D84315",
            orange_1 = "#FF5722",
            red      = "#D50000",
            red_1    = "#FF1744",
            pink     = "#F8BBD0",
            pink_1   = "#EC407A",
            purple   = "#7E57C2",
            purple_1 = "#B388FF",
            blue     = "#42A5F5",
            blue_1   = "#1E88E5",
            indigo   = "#5C6BC0",
            indigo_1 = "#9FA8DA",
            cyan     = "#0097A7",
            cyan_1   = "#00B8D4",
            teal     = "#26A69A",
            teal_1   = "#00897B",
            green    = "#66BB6A",
            green_1  = "#558B2F",
            base00_1 = "#FBFBFB",
            base00_2 = "#FDFDFD",
            base00_3 = "#FFFFFF",
            base00_p1 = "#F0F0F0",
            base00_p2 = "#EBEBEB",
            base00_p3 = "#E6E6E6",
        }
    else
        c = {
            base00   = "#424242",
            base01   = "#757575",
            base02   = "#9E9E9E",
            base03   = "#E0E0E0",
            yellow   = "#FFEE58",
            yellow_1 = "#FFF59D",
            brown    = "#BCAAA4",
            brown_1  = "#D7CCC8",
            orange   = "#FFCC80",
            orange_1 = "#FFA726",
            red      = "#E57373",
            red_1    = "#EF9A9A",
            pink     = "#F8BBD0",
            pink_1   = "#FF80AB",
            purple   = "#E1BEE7",
            purple_1 = "#9575CD",
            blue     = "#64B5F6",
            blue_1   = "#42A5F5",
            indigo   = "#C5CAE9",
            indigo_1 = "#7986CB",
            cyan     = "#80DEEA",
            cyan_1   = "#26C6DA",
            teal     = "#80CBC4",
            teal_1   = "#4DB6AC",
            green    = "#C5E1A5",
            green_1  = "#F4FF81",
            base00_1 = "#3A3A3A",
            base00_2 = "#323232",
            base00_3 = "#2A2A2A",
            base00_p1 = "#494949",
            base00_p2 = "#515151",
            base00_p3 = "#595959",
        }
    end

    c.light_emphasis = bg == "light" and c.base00_p3 or c.base00_3
    c.light_emphasis_1 = bg == "light" and c.base00_p2 or c.base00_2
    c.light_emphasis_2 = bg == "light" and c.base00_p1 or c.base00_1
    c.flashing_color = bg == "light" and "#FCE2EB" or "#EE758C"
    c.highlight_line_color = bg == "light" and "#EEEEEE" or "#444444"

    return c
end

return M

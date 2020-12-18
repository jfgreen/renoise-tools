local freqtable = require("freqtable")

local num_octaves = 9

local function show_frequency_table()

local vb = renoise.ViewBuilder()
    local content = vb:row { margin = 20 }

    for octave in freqtable(num_octaves) do
        local column = vb:column {
            margin = 10,
            spacing = 10,
        }
        content:add_child(column)
        for note in octave do
            column:add_child(vb:row{
                vb:text {
                    width = 30,
                    text = string.format("%s%d", note.name, note.octave)
                },
                vb:text {
                    text = string.format(": %.2fhz", note.frequency)
                }
            })
        end
    end

    renoise.app():show_custom_prompt("Note frequencies", content, {"OK"})
end

renoise.tool():add_menu_entry {
    name = "Main Menu:Tools:Show Note Frequencies",
    invoke = show_frequency_table,
}

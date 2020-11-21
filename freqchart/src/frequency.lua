local notes = {
    ["C"]  = 1,
    ["C#"] = 2,
    ["D"]  = 3,
    ["D#"] = 4,
    ["E"]  = 5,
    ["F"]  = 6,
    ["F#"] = 7,
    ["G"]  = 8,
    ["G#"] = 9,
    ["A"]  = 10,
    ["A#"] = 11,
    ["B"]  = 12
}

local function note_pos(pitch)
    return notes[pitch.note] + (pitch.octave * 12)
end

local A4_FREQ = 440
local A4_POS = note_pos { note="A", octave = 4 }
local twelth_root_of_two = math.pow(2, 1/12)

local function frequency(pitch)
    local offset_from_a4 = note_pos(pitch) - A4_POS
    local freq = A4_FREQ * math.pow(twelth_root_of_two, offset_from_a4)
    return string.format("%.2f", freq)
end

return frequency

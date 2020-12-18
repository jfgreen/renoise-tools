local notes = {
    "C",
    "C#",
    "D",
    "D#",
    "E",
    "F",
    "F#",
    "G",
    "G#",
    "A",
    "A#",
    "B"
}

local A4_FREQ = 440
local A4_POS = 10 + (4 * 12)
local TWELTH_ROOT_OF_TWO = math.pow(2, 1/12)

local function note(note_num, oct_num)
    local note_pos = note_num + (oct_num * 12)
    local offset_from_a4 = note_pos - A4_POS
    return {
        name=notes[note_num],
        octave=oct_num,
        frequency= A4_FREQ * math.pow(TWELTH_ROOT_OF_TWO, offset_from_a4)
    }
end

local function octave(oct_num)
    local n = 0
    return function()
        n =n + 1
        if n <= #notes then return note(n, oct_num) end
    end
end

local function freqtable(octave_count)
    local i = -1
    return function()
        i = i + 1
        if i < octave_count then return octave(i) end
    end
end

return freqtable

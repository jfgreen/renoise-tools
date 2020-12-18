require("assert_equals_rounded")

local freqtable = require("freqtable")

local function find_note(note_name, octave_number)
    for octave in freqtable(8) do
        for note in octave do
            if note.octave == octave_number and note.name == note_name then
                return note
            end
        end
    end
end

describe("freqtable module", function()
    describe("note A4", function()

        local note = find_note("A", 4)

        it("should have a frequency of 440.00", function()
            assert.equals_rounded("440.00", note.frequency, 2)
        end)

        it("should have a correct name", function()
            assert.are.equals("A", note.name)
        end)

        it("should have a correct octave", function()
            assert.are.equals(4, note.octave)
        end)
    end)

    describe("note C4", function()

        local note = find_note("C", 4)

        it("should have a frequency of 261.63", function()
            assert.equals_rounded("261.63", note.frequency, 2)
        end)

        it("should have a correct name", function()
            assert.are.equals("C", note.name)
        end)

        it("should have a correct octave", function()
            assert.are.equals(4, note.octave)
        end)
    end)

    describe("note F#0", function()

        local note = find_note("F#", 0)

        it("should have a frequency of 23.12", function()
            assert.equals_rounded("23.12", note.frequency, 2)
        end)

        it("should have a correct name", function()
            assert.are.equals("F#", note.name)
        end)

        it("should have a correct octave", function()
            assert.are.equals(0, note.octave)
        end)
    end)

end)

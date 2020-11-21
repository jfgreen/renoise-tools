describe("frequency module", function()
    describe("frequency", function()

        it("should return 440.00 for A4", function()
            local frequency = require("frequency")

            local expected = "440.00"
            local actual = frequency { note = "A", octave = 4 }

            assert.are.equal(expected, actual)
        end)

        it("should return 261.63 for C4", function()
            local frequency = require("frequency")

            local expected = "261.63"
            local actual = frequency { note = "C", octave = 4 }

            assert.are.equal(expected, actual)
        end)

        it("should return 23.12 for F#0", function()
            local frequency = require("frequency")

            local expected = "23.12"
            local actual = frequency { note = "F#", octave = 0 }

            assert.are.equal(expected, actual)
        end)
    end)
end)

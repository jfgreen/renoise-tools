describe("Hello world module", function()
    describe("greeting", function()
        it("should say hello to me", function()
            local greeting = require("greeting")

            local expected = "Hello James"
            local actual = greeting.greet("James")

            assert.are.equal(expected, actual)
        end)
    end)
end)

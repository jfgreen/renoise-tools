local say = require("say")
local assert = require("luassert")

local function equals_rounded(_, arguments)
    local expected_string = arguments[1]
    local number = arguments[2]
    local precision = arguments[3]

    local format_string = "%.".. precision .."f"
    local formatted_number = string.format(format_string, number)

    return formatted_number == expected_string
end

say:set(
    "assertion.equals_rounded.positive",
    "Expected %s to equal %s when rounded to a precision of %s)"
)

say:set(
    "assertion.equals_rounded.negative",
    "Expected %s to not equal %s when rounded to a precision of %s)"
)

assert:register(
    "assertion", "equals_rounded", equals_rounded,
    "assertion.equals_rounded.positive", "assertion.equals_rounded.negative"
)

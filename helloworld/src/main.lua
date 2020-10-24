local greeting = require('greeting')

local function ask_for_name()
    local vb = renoise.ViewBuilder()

    local title = "What is your name?"
    local buttons = {"Next"}

    local textfield = vb:textfield {
        width = 200
    }
    local content = vb:column {
        margin = 10,
        textfield
    }

    renoise.app():show_custom_prompt(title, content, buttons)

    return textfield.value
end

local function say_hi(name)
    renoise.app():show_prompt(
        "Greetings",
        greeting.greet(name),
        {"Thanks!"}
    )
end

local function greet_user()
    local name = ask_for_name()
    say_hi(name)
end

renoise.tool():add_menu_entry {
    name = "Main Menu:Tools:Hello World:Greet",
    invoke = greet_user,
}

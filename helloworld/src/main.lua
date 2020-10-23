local greeting = require('greeting')

local function say_hi()
    renoise.app():show_prompt(
        "Greetings",
        greeting.greet("Renoise User"),
        {"Thanks!"}
    )
end

renoise.tool():add_menu_entry {
    name = "Main Menu:Tools:Hello World:Greet",
    invoke = say_hi,
}

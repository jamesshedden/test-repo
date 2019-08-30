# workflow ties an event to an action
workflow "Log on push" {
  on = "push" # See triggers section for more https://www.notion.so/appltn/Push-Run-Beta-99f0968429a347e3a3de3ec36abf9978#b27cf47710e74bbaba2cd105b77587af
  resolves = "log event data"
}

# action tells us which script to execute
action "log event data" {
  uses = "./hello-world.js"
}
workflow "New workflow" {
  on = "push"
  resolves = ["Read date"]
}

action "Set date" {
  uses = "actions/write"
}

action "Read date" {
  uses = "actions/read"
  needs = ["Set date"]
}

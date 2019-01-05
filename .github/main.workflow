workflow "New workflow" {
  on = "push"
  resolves = ["Read date"]
}

action "Set date" {
  uses = "docker://alpine"
  runs = "date > TIMESTAMP"
}

action "Read date" {
  uses = "docker://alpine"
  runs = "cat TIMESTAMP"
  needs = ["Set date"]
}

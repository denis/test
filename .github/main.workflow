workflow "New workflow" {
  on = "push"
  resolves = ["docker://ubuntu"]
}

action "docker://ubuntu" {
  uses = "docker://ubuntu"
  runs = "ls -la"
}

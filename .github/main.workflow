workflow "Update database" {
  resolves = ["Download"]
  on = "schedule(0 0 * * *)"
}

action "Download" {
  uses = "actions/bin/sh@master"
  runs = "make update"
  secrets = ["GITHUB_TOKEN"]
}

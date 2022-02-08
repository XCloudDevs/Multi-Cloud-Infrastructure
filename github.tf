resource "github_repository" "repos" {
  count       = length(var.github_repos)
  name        = var.github_repos[count.index]
  description = "terraform 10${count.index}"
  visibility  = "private"
}
variable "environment_name" {
  type = string
}

variable "repo" {
  type = string
}

variable "reviewers" {
  type    = list(number)
  default = []
}

variable "secrets" {
  type      = map(string)
}

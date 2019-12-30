terraform {
  required_version = ">=0.12"
}

resource "random_id" "mac" {
  count       = 6
  byte_length = 1
}

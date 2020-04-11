terraform {
  required_version = ">=0.12.6"
}

resource "random_id" "mac_parts" {
  count       = 6 * var.nr_of_macs
  byte_length = 1
}

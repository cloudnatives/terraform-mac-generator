terraform {
  required_version = ">=0.12.6"
}

resource "random_id" "mac_parts" {
  count       = (local.bytes_per_mac_address - 1) * var.nr_of_macs
  byte_length = 1
}

resource "random_shuffle" "first_digit" {
  count = var.nr_of_macs

  result_count = 1
  input        = local.hexadecimal_digits
}

resource "random_shuffle" "second_digit" {
  count = var.nr_of_macs

  result_count = 1
  input        = local.unicast_digits
}

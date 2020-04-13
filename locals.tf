locals {
  bytes_per_mac_address = 6

  hexadecimal_digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
  unicast_digits     = ["2", "6", "a", "e"]

  list_of_bytes = chunklist(random_id.mac_parts.*.hex, local.bytes_per_mac_address - 1)

  mac_list = flatten([
    for idx, bytes in local.list_of_bytes : [
      join(var.delimiter, concat(list("${random_shuffle.first_digit[idx].result[0]}${random_shuffle.second_digit[idx].result[0]}"), bytes))
    ]
  ])
}

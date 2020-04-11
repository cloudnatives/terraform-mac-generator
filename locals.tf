locals {
  bytes_per_mac = 6

  list_of_bytes = chunklist(random_id.mac_parts.*.hex, local.bytes_per_mac)

  mac_list = flatten([
    for bytes in local.list_of_bytes : [
      join(var.delimiter, bytes)
    ]
  ])
}

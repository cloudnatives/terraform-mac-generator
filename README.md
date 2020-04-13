# Terraform MAC Generator

## Description

This module generates a random 6-byte hexadecimal unicast MAC address.

## Requirements

| Name | Version |
|------|---------|
| terraform | >=0.12.6 |

## Providers

| Name | Version |
|------|---------|
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| delimiter | The delimiter to join the different bytes. (Default: `:`) | `string` | `":"` | no |
| nr\_of\_macs | The number of MAC addresses you want to generate | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| mac\_list | The generated MAC addresses |

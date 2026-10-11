resource "keycloak_hardcoded_group_identity_provider_mapper" "hardcoded_group_identity_provider_mappers" {
  for_each = var.hardcoded_group_identity_provider_mappers

  identity_provider_alias = each.value.identity_provider_alias
  name                    = each.value.name
  realm                   = each.value.realm
  extra_config            = each.value.extra_config
  group                   = each.value.group
}


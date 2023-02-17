resource "keycloak_openid_client" "CLIENT" {
  access_token_lifespan               = "18000"
  access_type                         = "CONFIDENTIAL"
  backchannel_logout_session_required = true
  base_url                            = ""
  client_authenticator_type           = "client-secret"
  client_id                           = "PLR-QA-MOH-APPROVER"
  consent_required                    = false
  description                         = "The Provider and Location Registry (PLR) is a standards-based repository of core provider data supplied by authorized sources. This client will be used to generate accces tokens for the internal PLR QA team with the PLR MOH_APPROVER role"
  enabled                             = true
  frontchannel_logout_enabled         = false
  full_scope_allowed                  = false
  implicit_flow_enabled               = false
  name                                = ""
  pkce_code_challenge_method          = ""
  realm_id                            = "moh_applications"
  service_accounts_enabled            = true
  standard_flow_enabled               = false
  use_refresh_tokens                  = true
  valid_redirect_uris = [
  ]
  web_origins = [
  ]
}
resource "keycloak_openid_hardcoded_claim_protocol_mapper" "orgId" {
  add_to_access_token = true
  add_to_id_token     = true
  add_to_userinfo     = true
  claim_name          = "orgId"
  claim_value         = "00002855"
  claim_value_type    = "String"
  client_id           = keycloak_openid_client.CLIENT.id
  name                = "orgId"
  realm_id            = keycloak_openid_client.CLIENT.realm_id
}
resource "keycloak_openid_user_session_note_protocol_mapper" "Client-Host" {
  add_to_id_token  = true
  claim_name       = "clientHost"
  claim_value_type = "String"
  client_id        = keycloak_openid_client.CLIENT.id
  name             = "Client Host"
  realm_id         = keycloak_openid_client.CLIENT.realm_id
  session_note     = "clientHost"
}
resource "keycloak_openid_user_session_note_protocol_mapper" "Client-ID" {
  add_to_id_token  = true
  claim_name       = "clientId"
  claim_value_type = "String"
  client_id        = keycloak_openid_client.CLIENT.id
  name             = "Client ID"
  realm_id         = keycloak_openid_client.CLIENT.realm_id
  session_note     = "clientId"
}
resource "keycloak_openid_user_session_note_protocol_mapper" "Client-IP-Address" {
  add_to_id_token  = true
  claim_name       = "clientAddress"
  claim_value_type = "String"
  client_id        = keycloak_openid_client.CLIENT.id
  name             = "Client IP Address"
  realm_id         = keycloak_openid_client.CLIENT.realm_id
  session_note     = "clientAddress"
}
module "service-account-roles" {
  source                  = "../../../../modules/service-account-roles"
  realm_id                = keycloak_openid_client.CLIENT.realm_id
  client_id               = keycloak_openid_client.CLIENT.id
  service_account_user_id = keycloak_openid_client.CLIENT.service_account_user_id
  realm_roles = {
    "default-roles-moh_applications" = "default-roles-moh_applications",
  }
  client_roles = {
    "PLR_IAT/MOH_APPROVER" = {
      "client_id" = var.PLR_IAT.CLIENT.id,
      "role_id"   = "MOH_APPROVER"
    }
    "PLR_UAT/MOH_APPROVER" = {
      "client_id" = var.PLR_UAT.CLIENT.id,
      "role_id"   = "MOH_APPROVER"
    }
    "PLR_CONF/MOH_APPROVER" = {
      "client_id" = var.PLR_CONF.CLIENT.id,
      "role_id"   = "MOH_APPROVER"
    }
    "PLR_SIT/MOH_APPROVER" = {
      "client_id" = var.PLR_SIT.CLIENT.id,
      "role_id"   = "MOH_APPROVER"
    }
    "PLR_REV/MOH_APPROVER" = {
      "client_id" = var.PLR_REV.CLIENT.id,
      "role_id"   = "MOH_APPROVER"
    }
  }
}
module "scope-mappings" {
  source    = "../../../../modules/scope-mappings"
  realm_id  = keycloak_openid_client.CLIENT.realm_id
  client_id = keycloak_openid_client.CLIENT.id
  roles = {
    "PLR_IAT/MOH_APPROVER"  = var.PLR_IAT.ROLES["MOH_APPROVER"].id
    "PLR_UAT/MOH_APPROVER"  = var.PLR_UAT.ROLES["MOH_APPROVER"].id
    "PLR_CONF/MOH_APPROVER" = var.PLR_CONF.ROLES["MOH_APPROVER"].id
    "PLR_SIT/MOH_APPROVER"  = var.PLR_SIT.ROLES["MOH_APPROVER"].id
    "PLR_REV/MOH_APPROVER"  = var.PLR_REV.ROLES["MOH_APPROVER"].id
  }
}
resource "keycloak_openid_client" "CLIENT" {
  access_token_lifespan               = ""
  access_type                         = "CONFIDENTIAL"
  backchannel_logout_session_required = true
  base_url                            = "https://hoopctst.hlth.gov.bc.ca"
  client_authenticator_type           = "client-secret"
  client_id                           = "HOOPC"
  consent_required                    = false
  description                         = "The Hospital Out Of Province Claims is a web-based application that provides British Columbia hospitals with a secure method of submitting out-of-province (OOP) claims directly to the Ministry of Health through the Internet."
  direct_access_grants_enabled        = false
  enabled                             = true
  frontchannel_logout_enabled         = false
  full_scope_allowed                  = false
  implicit_flow_enabled               = false
  name                                = "HOOPC"
  pkce_code_challenge_method          = ""
  realm_id                            = "moh_applications"
  service_accounts_enabled            = false
  standard_flow_enabled               = true
  use_refresh_tokens                  = true
  valid_redirect_uris = [
    "http://localhost:8080/*",
    "https://localhost:8081/*",
    "https://hoopcdev.hlth.gov.bc.ca/*",
    "https://hoopctst.hlth.gov.bc.ca/*",
    "https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
    "https://sts.healthbc.org/adfs/ls/*",
  ]
  web_origins = [
  ]
  authentication_flow_binding_override_browser_id = var.browser_idp_restriction_flow
  login_theme                                     = "moh-app-realm-idp-restriction"
}
resource "keycloak_openid_user_session_note_protocol_mapper" "IDP" {
  add_to_id_token  = false
  claim_name       = "identity_provider"
  claim_value_type = "String"
  client_id        = keycloak_openid_client.CLIENT.id
  name             = "IDP"
  realm_id         = keycloak_openid_client.CLIENT.realm_id
  session_note     = "identity_provider"
}

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = module.payara-client.CLIENT.realm_id
  client_id = module.payara-client.CLIENT.id
  default_scopes = [
    "idir_aad",
    "phsa",
    "moh_idp"
  ]
}

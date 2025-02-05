module "payara-client" {
  source                             = "../../../../../modules/payara-client"
  base_url                           = "https://tapt.hlth.gov.bc.ca/tap"
  claim_name                         = "tap_role"
  client_id                          = "TAP"
  client_name                        = "TAP"
  client_role_mapper_add_to_id_token = false
  client_role_mapper_add_to_userinfo = false
  description                        = "The Travel Assistance Program Analysis Reports is a report web application that allows authorized persons to see how incidence of use of different modes of transportation by the general public."
  mapper_name                        = "TAP Role"
  roles = {
    "TAPUSER" = {
      "name" = "TAPUSER"
    },
  }
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://localhost:8080/*",
    "https://localhost:8081/*",
    "https://tapd.hlth.gov.bc.ca/*",
    "https://tapt.hlth.gov.bc.ca/*",
    "https://logontest7.gov.bc.ca/clp-cgi/logoff.cgi*",
  ]
  authentication_flow_binding_override_browser_id = var.browser_idp_restriction_flow
  login_theme                                     = "moh-app-realm-idp-restriction"
}

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = module.payara-client.CLIENT.realm_id
  client_id = module.payara-client.CLIENT.id
  default_scopes = [
    "idir_aad",
    "moh_idp",
  ]
}

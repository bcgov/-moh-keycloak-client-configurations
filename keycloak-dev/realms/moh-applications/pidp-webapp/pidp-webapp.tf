resource "keycloak_openid_client" "CLIENT" {
    access_type = "PUBLIC"
	access_token_lifespan = "300"
	backchannel_logout_session_required = false
	base_url    = ""
	client_authenticator_type = "client-secret"
	client_id   = "PIDP-WEBAPP"
	consent_required = false
	description = ""
	direct_access_grants_enabled = false
	enabled = true
	frontchannel_logout_enabled = false
	full_scope_allowed          = false
	implicit_flow_enabled       = false
	name = ""
	realm_id = "moh_applications"
	service_accounts_enabled =false
	standard_flow_enabled = true
	use_refresh_tokens = false
	valid_redirect_uris = [
		"http://localhost:*",
		"https://dev.healthprovideridentityportal.gov.bc.ca/*",
		"https://dev.healthprovideridentityportal.gov.bc.ca",
	]
	web_origins = [
		"*"
	]
	admin_url   = ""
}

module "scope-mappings" {
	source = "../../../../modules/scope-mappings"
	realm_id = keycloak_openid_client.CLIENT.realm_id
	client_id = keycloak_openid_client.CLIENT.id
	roles = {
		"account/view-profile" = "22f2f067-d74a-4108-bf1a-eb6bffd71736",
		"PIDP-SERVICE/feature_pidp_demo" = "a94bec86-0808-4f71-a947-b2049afc7d7e",
		"PIDP-SERVICE/USER" = "7f31f194-bfcc-43fd-babe-bc9545292ede",
		"PIDP-SERVICE/feature_amh_demo" = "f3d5d424-88cb-472f-a0b9-b99cc342f40f",
		"PIDP-SERVICE/ADMIN" = "9dbc8e8b-0e25-44cd-bd1b-34a1846ac269",
	}
}

resource "keycloak_openid_audience_protocol_mapper" "PIDP-SERVICE-aud-mapper" {
	add_to_id_token = false
	client_id = keycloak_openid_client.CLIENT.id
	included_client_audience = "PIDP-SERVICE"
	name = "PIDP-SERVICE aud mapper"
	realm_id  = keycloak_openid_client.CLIENT.realm_id
}

resource "keycloak_openid_user_attribute_protocol_mapper" "given_names" {
	add_to_id_token = true
	claim_name = "given_names"
	client_id = keycloak_openid_client.CLIENT.id
	name = "given_names"
	user_attribute = "given_names"
	realm_id  = keycloak_openid_client.CLIENT.realm_id
}
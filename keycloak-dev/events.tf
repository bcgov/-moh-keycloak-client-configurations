######################
# APPLICATION REALMS #
######################

resource "keycloak_realm_events" "realm_events_bcerd" {
  realm_id = "bcerd"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_lra" {
  realm_id = "lra"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_master" {
  realm_id = "master"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_mhsu_foundry" {
  realm_id = "mhsu_foundry"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_moh_applications" {
  realm_id = "moh_applications"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_moh_citizen" {
  realm_id = "moh_citizen"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_pidp_sandbox" {
  realm_id = "pidp_sandbox"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_v2_pos" {
  realm_id = "v2_pos"

  events_enabled = true
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

##############
# IDP REALMS #
##############

resource "keycloak_realm_events" "realm_events_bceid_basic" {
  realm_id = "bceid_basic"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_bceid_business" {
  realm_id = "bceid_business"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_bcprovider_aad" {
  realm_id = "bcprovider_aad"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_bcproviderlab_aad" {
  realm_id = "bcproviderlab_aad"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_bcsc" {
  realm_id = "bcsc"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_fnha_aad" {
  realm_id = "fnha_aad"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_idir" {
  realm_id = "idir"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_idir_aad" {
  realm_id = "idir_aad"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_mhsu_ehs" {
  realm_id = "mhsu_ehs"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_moh_idp" {
  realm_id = "moh_idp"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_phsa" {
  realm_id = "phsa"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}

resource "keycloak_realm_events" "realm_events_phsa_aad" {
  realm_id = "phsa_aad"

  events_enabled = false
  # There are 31,536,000 seconds in a year.
  events_expiration = 31536000

  admin_events_enabled         = true
  admin_events_details_enabled = true

  # When omitted or left empty, keycloak will enable all event types
  enabled_event_types = [
  ]

  events_listeners = [
    "jboss-logging", # keycloak enables the 'jboss-logging' event listener by default.
  ]
}


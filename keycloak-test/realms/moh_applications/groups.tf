module "CGI-AM-TEAM" {
  source       = "./groups/cgi-am-team"
  MANAGE-USERS = module.MANAGE-USERS
}

module "CGI-DEVELOPER" {
  source                  = "./groups/cgi-developer"
  CGI-APPLICATION-SUPPORT = module.CGI-APPLICATION-SUPPORT
  MANAGE-USERS            = module.MANAGE-USERS
}

module "CGI-MIDTIER" {
  source                  = "./groups/cgi-midtier"
  CGI-APPLICATION-SUPPORT = module.CGI-APPLICATION-SUPPORT
  HEM                     = module.HEM
}

module "CGI-SALESFORCE" {
  source                  = "./groups/cgi-salesforce"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "CGI-QA" {
  source                  = "./groups/cgi-qa"
  CGI-APPLICATION-SUPPORT = module.CGI-APPLICATION-SUPPORT
  HEM                     = module.HEM
  MANAGE-USERS            = module.MANAGE-USERS
}

module "CGI-REGISTRIES-ADMIN" {
  source                  = "./groups/cgi-registries-admin"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "DHIPER-MANAGEMENT" {
  source                  = "./groups/dhiper-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "EDRD-MANAGEMENT" {
  source                  = "./groups/edrd-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "EMCOD-ACCESS-TEAM" {
  source                  = "./groups/emcod-access-team"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "FLORIZEL-MANAGEMENT" {
  source                  = "./groups/florizel-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "HEALTH-IDEAS-MANAGEMENT" {
  source                  = "./groups/health-ideas-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "HIBC-ACCESS-MANAGEMENT" {
  source                  = "./groups/hibc-access-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "HSIAR-MANAGEMENT" {
  source                  = "./groups/hsiar-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "HSPP-MANAGEMENT" {
  source                  = "./groups/hspp-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "ICY-MANAGEMENT" {
  source                  = "./groups/icy-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "ITSB-ACCESS-TEAM" {
  source                  = "./groups/itsb-access-team"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "IVF-PORTAL-MANAGEMENT" {
  source                  = "./groups/ivf-portal-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "MAID-ACCESS-MANAGEMENT" {
  source                  = "./groups/maid-access-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PAS-MANAGEMENT" {
  source                  = "./groups/pas-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PHLAT-MANAGEMENT" {
  source                  = "./groups/phlat-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PIDP-MANAGEMENT" {
  source                  = "./groups/pidp-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PLR-MANAGEMENT" {
  source                  = "./groups/plr-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PRIME-MANAGEMENT" {
  source                  = "./groups/prime-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PRP-USER-ADMIN" {
  source                  = "./groups/prp-user-admin"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "PRIMARY-CARE-ACCESS-TEAM" {
  source                  = "./groups/primary-care-access-team"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "REGISTRIES-CONNECTIONS-TEAM" {
  source                  = "./groups/registries-connections-team"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "TBCM-MANAGEMENT" {
  source                  = "./groups/tbcm-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "TPL-MANAGEMENT" {
  source                  = "./groups/tpl-management"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

module "WEBCAPS-USER-ADMIN" {
  source                  = "./groups/webcaps-user-admin"
  USER-MANAGEMENT-SERVICE = module.USER-MANAGEMENT-SERVICE
}

resource "tfe_project" "self" {
  for_each = local.projects


  description  = each.value.description
  name         = each.key
  organization = var.organization_name
}

resource "tfe_workspace" "self" {
  for_each = local.workspaces

  description  = each.value.description
  name         = each.key
  organization = var.organization_name
  project_id   = each.value.project_id

  # execution_mode    = each.value.execution_mode
  # variables         = try(each.value.variables, [])

  vcs_repo {
    github_app_installation_id = data.tfe_github_app_installation.this.id
    identifier                 = each.value.vcs_repo_identifier
  }
}

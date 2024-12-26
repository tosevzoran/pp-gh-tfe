locals {
  projects = {
    "pp-gh" = {
      description = "Personal projects on Github"
    }
  }

  workspaces = {
    "pp-gh-tfe" = {
      description    = "TFE workspace for GH personal projects"
      execution_mode = "local"
      # project_id          = module.projects["pp-gh"].id
      project_id          = tfe_project.self["pp-gh"].id
      vcs_repo_identifier = "${var.github_organization_name}/pp-gh-tfe"
    }
  }
}

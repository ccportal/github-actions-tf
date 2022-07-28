# Business Continiuity for Genesys Cloud

This repository contains a set of Github actions and a web frontend to democase Business Continuity (NOT Disaster Recovery) for Genesys Cloud.

In short, it uses Terraform to synchronize configuration objects between a `HOME` Genesys Cloud organization and a `TARGET` Genesys Cloud organization.

## Requirements

- Access to Github (you will need to fork this repo)
- Access to 2 Genesys Cloud organizations (1 home, 1 target) with admin access

## Limitations

- We currently support synchronizing the following configuration objects:
  - Users
  - Roles
  - Skills
  - Queues
  - Flows

## How to use

- Clone this repository
- Create a new [Github personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) for your Github account
  - Required scopes
    - All `repo`
    - `workflow`
- Copy the generated token. It won't appear again!
- Create a new OAuth Client id/secret pair in your `HOME` org. Make sure it has sufficient permissions to read configuration objects listed in the [Limitations](#limitations) section.
- Create a new OAuth Client id/secret pair in your `TARGET` orgs. Make sure it has sufficient permissions to read **and write** configuration objects listed in the [Limitations](#limitations) section.
- Get the pages URL (i.e. [https://GITHUBREPO.github.io/github-actions-tf/web/](https://GITHUBREPO.github.io/github-actions-tf/web/))
- Enter your Github personal access token
- Enter the credentials for your `HOME` org. This is the org that will be used to synchronize configuration objects from.
- Enter the credentials for at least one `TARGET` org. Configuration objects will be created/updated/deleted based on the configuration of your `HOME` org.
- Credentials are saved in your browser local storage
- Click on `Save Configuration`
- Click on `Manual Run` to start the process manually (optionnally set a schedule for later runs)
- Open your Github Actions page (e.g [https://github.com/YOURUSERNAME/github-actions-tf/actions](https://github.com/YOURUSERNAME/github-actions-tf/actions)) to monitor the status of the action

## Architecture

![Architecture Diagram](./architecture.png "Architecture Diagram")

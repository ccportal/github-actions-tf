# Business Continiuity for Genesys Cloud

This repository contains a set of Github actions and a web frontend to democase Business Continuity (NOT Disaster Recovery) for Genesys Cloud.

## Requirements

- Access to 2 Genesys Cloud organization (1 home, 1+ targets)
- Access to Github (you will need to fork this repo)

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
- Copy the generated token. It won't appear again
- Get the pages URL (i.e. https://GITHUBREPO.github.io/github-actions-tf/web/)
- Enter your personal access token
- Enter the credentials for your `HOME` org. This is the org that will be used to synchronize configuration objects from.
- Enter the credentials for at least one `TARGET` org. Configuration objects will be created/updated/deleted based on the configuration of your `HOME` org.
- Click on `Save Configuration`

## Architecture

[INSERT DIAGRAM HERE](image)

## How it works

> Configuration will always be synchronized from the home organization to the target organization(s)

On a schedule, configuration objects from your home organization will be copied to your target organization(s) using a specific order to avoid conflicts or missing data.

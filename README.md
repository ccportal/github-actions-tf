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

- Fork this repository
- Create a new personal access token

## Architecture

[INSERT DIAGRAM HERE](image)

## How it works

> Configuration will always be synchronized from the home organization to the target organization(s)

On a schedule, configuration objects from your home organization will be copied to your target organization(s) using a specific order to avoid conflicts or missing data.

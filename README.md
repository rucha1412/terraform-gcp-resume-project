# Terraform GCP Resume Project

This project provisions a simple production-style infrastructure on Google Cloud using Terraform.

## Services used

- Terraform
- Google Cloud Run
- Google Cloud SQL
- Google Secret Manager
- Service Accounts
- GitHub

## What it does

- Creates a service account for Cloud Run
- Stores DB password in Secret Manager
- Creates a MySQL database in Cloud SQL
- Deploys a Cloud Run service
- Connects Terraform modules using outputs and variables

## Project structure

- root module for orchestration
- child modules for each service

## Why I built it

To showcase hands-on Infrastructure as Code skills on GCP for resume and recruiter visibility.

# pMax Dashboard

## Problem Statement

Reporting for pMax campaigns is cumbersome and advertisers need a simple way to see an overview of their accounts and get a clear picture of the assets available for their pmax campaigns.

## Solution

The pMax Dashboard is a DataStudio dashboard providing an overview of your accounts' pmax campaigns' performance and the assets uploaded.  Feedback is provided as to whether the campaigns comply with the best practice guidelines for the number and type of assets uploaded.

## Deliverable (Implementation)

* DataStudio dashboard based on your Google Ads data.

## Deployment

## Setup

1. Create an [OAuth Consent Screen](https://console.cloud.google.com/apis/credentials/consent), make it of type "**External**"

1. Create an [OAuth Credentials](https://console.cloud.google.com/apis/credentials/oauthclient) - **Client ID**, **Client secret** and Google Ads enabled **Refresh Token**.
Follow instructions in [this video](https://www.youtube.com/watch?v=KFICa7Ngzng) OR:
    1. Set Application type to "**Web application**"
    1. Under Authorized redirect URIs, add a line with: https://developers.google.com/oauthplayground
    1. Save and take note of the **Client ID** and **Client Secret** presented to you
    1. Go to [OAuth2 Playground](https://developers.google.com/oauthplayground/#step1&scopes=https%3A//www.googleapis.com/auth/adwords&url=https%3A//&content_type=application/json&http_method=GET&useDefaultOauthCred=checked&oauthEndpointSelect=Google&oauthAuthEndpointValue=https%3A//accounts.google.com/o/oauth2/v2/auth&oauthTokenEndpointValue=https%3A//oauth2.googleapis.com/token&includeCredentials=unchecked&accessTokenType=bearer&autoRefreshToken=unchecked&accessType=offline&forceAprovalPrompt=checked&response_type=code) to generate a refresh token. This link is already pre-populated with the right scope.
    1. On the right side under settings, in "OAuth Client ID" add your client ID and under "OAuth Client secret" add your client secret
    1. Click "Authorize APIs and sign-in with a user that has access to your Google Ads account"
    1. Click "Exchange authorization code for tokens"
    1. Take not of the "Refresh Token"

1. Click the big blue button to deploy:

   [![Run on Google Cloud](https://deploy.cloud.run/button.svg)]([https://deploy.cloud.run](https://console.cloud.google.com/?cloudshell=true&cloudshell_git_repo=https://github.com/sareetb/pmaxdash_ext&cloudshell_tutorial=walkthrough.md
))

1. Choose the Google Cloud Project you created for this tool

1. Select the region where you want to deploy

1. When prompted, paste in your client ID, client secret, refresh token, developer token and MCC ID

1. Wait for the deployment to finish. Once finished you will be given your ***URL***

1. Click on "Run Queries" to manually run the queries and create tables for the first time. The queries are then scheduled to run daily automatically

1. Wait a few minutes and click "Create Dashboard". This will create your own private copy of the App Reporting Pack dashboard. Change your dashboard's name and save it's URL or bookmark it.

### Prerequisites

* OAuth2 credentials for _desktop application_ (refer to [Generate OAuth2 credentials] (https://developers.google.com/google-ads/api/docs/client-libs/python/oauth-desktop))
* [Enable Google Ads API (https://developers.google.com/google-ads/api/docs/first-call/oauth-cloud-project#enable_the_in_your_project)]
* Developer token
* New GCP with Big Query

Access to the repository configured. In order to clone this repository you need to do the following:

* Visit https://professional-services.googlesource.com/new-password and login with your account
* Once authenticated please copy all lines in the box and paste them in the terminal.


### Installation

* Enter GCP Cloud Shell command-line
* Clone solution repository by entering the command:
git clone https://professional-services.googlesource.com/solutions/pmax_dashboard --depth=1
* Go to the directory of the solution : cd pmax_dashboard
* TODO: put google-ads.yaml into the same directory
* Launch the command: rm -rf \~/.npm/
* Launch the command : npm init gaarf-wf
* Follow the instructions

### Usage

Clone the Dashboard Template & DataSources as mentioned at https://professional-services.googlesource.com/solutions/pmax_dashboard/+/refs/heads/main/how-to-replicate-dashboard.md

## Disclaimer

** This is not an officially supported Google product.**

Copyright 2021 Google LLC. This solution, including any related sample code or data, is made available on an “as is,” “as available,” and “with all faults” basis, solely for illustrative purposes, and without warranty or representation of any kind. This solution is experimental, unsupported and provided solely for your convenience. Your use of it is subject to your agreements with Google, as applicable, and may constitute a beta feature as defined under those agreements. To the extent that you make any data available to Google in connection with your use of the solution, you represent and warrant that you have all necessary and appropriate rights, consents and permissions to permit Google to use and process that data. By using any portion of this solution, you acknowledge, assume and accept all risks, known and unknown, associated with its usage, including with respect to your deployment of any portion of this solution in your systems, or usage in connection with your business, if at all.

Contact: sareet@google.com, imosin@google.com

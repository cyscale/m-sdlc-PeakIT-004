# Snyk for Open Source Code

Open Source code is everywhere! You should be testing for OSS vulberabilities and outdated packages. Snyk offers a free scanning tool for OSS packages.

## Method 1 - Github Action

[See usage guide on Snyk Github Repo](https://github.com/snyk/actions)

Save the Snyk API Key as a Secret in Github

- `SNYK_TOKEN` - the username used to access the Snyk UI and scanning tool

## Method 2 - Locally Installed Snyk CLI

1. Ensure you have NPM installed
2. Run the following command:
>`npm install snyk@latest -g` OR for yarn `yarn global add snyk`
3. Run `snyk auth` on a terminal and you'll see a prompt to login to Snyk UI, which is where you can view the results of the scan.
4. Run a scan on the code. For this process, you can scan all of the source code in the project.

An example of this would be:
`cd m-sdlc-PeakIT-004`
`snyk test`

You'll then see what tests have passed, what tests have failed, and what you can do to remediate the issues. You can either view the results on the terminal or from the UI.
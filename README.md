<p align="center">
	<img src="/images/otype_site.png" alt="otype Site"/>
</p>

<p>
	<a href="https://github.com/otype/otype.github.io/commits/master">
	<img src="https://img.shields.io/github/last-commit/otype/otype.github.io.svg?style=flat-square&logo=github&logoColor=white" alt="GitHub last commit">
    <a href="https://github.com/otype/otype.github.io/issues">
    <img src="https://img.shields.io/github/issues-raw/otype/otype.github.io.svg?style=flat-square&logo=github&logoColor=white" alt="GitHub issues">
    <a href="https://github.com/otype/otype.github.io/pulls">
    <img src="https://img.shields.io/github/issues-pr-raw/otype/otype.github.io.svg?style=flat-square&logo=github&logoColor=white" alt="GitHub pull requests">
</p>

This repository contains all files for my sites (identical copies):

- [otype.github.io](https://otype.github.io)
- [otype.de](https://otype.de)

The site is based on [Hugo](https://gohugo.io/) and the [hugo-goa](https://github.com/kaapiandcode/hugo-goa) theme.

## Getting started

### Requirements

- [Golang](https://go.dev/), installed e.g. via [goenv](https://github.com/syndbg/goenv)
- [Hugo](https://gohugo.io/)
- [gh](https://cli.github.com/)

### Development setup

1. Clone this repo.
```console
$ gh repo clone otype/otype.github.io
```

2. Run setup.

```console
$ make setup
````

3. Run server.

```console
$ make run
```

### Release and deploy a new version

Every push to the `main` branch automatically triggers the GitHub Actions workflow to build and deploy the site to GitHub Pages.

1. Stage and commit your changes:
   ```console
   $ git add .
   $ git commit -m "Add new post"
   ```

2. Deploy by pushing to `main`:
   ```console
   $ make deploy
   ```
   *(or simply run `git push origin main`)*

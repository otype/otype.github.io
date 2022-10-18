# otype.de

This repository contains all files for my site [otype.github.io](https://otype.github.io) and [otype.de](https://otype.de). The site is based on [Hugo](https://gohugo.io/).

## Running locally

1. Clone this repo (assumes you are using [gh](https://cli.github.com/)):
```
gh repo clone otype/otype.de
```

2. Run setup:

```
make setup
````

3. Run server:

```
make run
```

## Deploy

This will deploy to:
- [otype.github.io](https://otype.github.io) and
- [otype.de](https://otype.de)

Build the site, first:

```
make
```

Then, deploy:

```
make deploy
```

Deploy will implicitly ...
- checkout branch `public`,
- rebase `main`,
- push to `public`
- and `scp` all files to Uberspace.

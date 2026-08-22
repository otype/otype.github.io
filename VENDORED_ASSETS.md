# Vendored third-party assets

These files used to be loaded live from Google Fonts / jsdelivr / cdnjs.
They're now self-hosted under `static/fonts/` and `static/vendor/` so the
site makes no third-party network requests (visitor IPs were otherwise
sent to those CDNs on every page load — see GDPR/Google Fonts case law).

No update automation is in place. Check the "Where to check" links
every 6-12 months, or sooner if you hear about a specific CVE in one
of these libraries. Fonts essentially never need updating.

| Asset | Version | Files | Fetched from | Fetched on | Where to check |
|---|---|---|---|---|---|
| Bootstrap | 5.3.3 | `static/vendor/bootstrap/bootstrap.min.css`, `bootstrap.bundle.min.js` | `cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/...` | 2026-08-22 | https://github.com/twbs/bootstrap/releases |
| Font Awesome | 6.5.2 (Free) | `static/vendor/fontawesome/css/all.min.css` + `webfonts/*` | `cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/...` | 2026-08-22 | https://github.com/FortAwesome/Font-Awesome/releases |
| highlight.js | 11.9.0 | `static/vendor/highlightjs/highlight.min.js`, `styles/default.min.css` | `cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/...` | 2026-08-22 | https://github.com/highlightjs/highlight.js/releases |
| Roboto (variable, latin subset) | v51 | `static/fonts/roboto-normal-var.woff2`, `roboto-italic-var.woff2` | `fonts.gstatic.com/s/roboto/v51/...` | 2026-08-22 | https://fonts.google.com/specimen/Roboto (check the served CSS2 URL for a new `/v.../` version) |
| Roboto Slab (variable, latin subset) | v36 | `static/fonts/roboto-slab-var.woff2` | `fonts.gstatic.com/s/robotoslab/v36/...` | 2026-08-22 | https://fonts.google.com/specimen/Roboto+Slab |
| Lato | (all static weights, TTF) | `static/fonts/Lato-*.ttf`, `OFL.txt` | pre-existing in repo before this manifest | unknown | https://fonts.google.com/specimen/Lato |

## How to re-check for a new version

**Bootstrap / Font Awesome / highlight.js**: compare the version in this
table against the latest release at the linked GitHub repo. If newer,
re-download the same file paths with the new version number baked into
the URL, verify the SRI hash if the project publishes one, and update
the version + fetched-on date here.

**Roboto / Roboto Slab**: fetch
`https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&family=Roboto+Slab:wght@400;700`
with a modern browser User-Agent and diff the `/v51/`, `/v36/` version
segments in the returned `url(...)` values against this table.

**Lato**: not currently tracked to a version; if you want it trackable,
re-fetch it the same way as Roboto and record the version here.

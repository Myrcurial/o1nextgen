# site/ — project blog (GitHub Pages)

Source for the project's GitHub Pages site: the story of how this
project came to be, hardware-mod write-ups for the author's Osborne
machines, and the ongoing build log.

## Publishing

Jekyll, minimal config. Two supported ways to publish (pick one in
repo Settings → Pages):

1. **GitHub Actions** (recommended): the standard "Deploy Jekyll site"
   workflow with the source directory set to `site/` — publishes on
   every merge to `main`.
2. **Branch deploy**: an Action (or manual step) that pushes `site/` to
   a `gh-pages` branch.

(The usual `/docs` Pages source is unavailable — our `docs/` is the
engineering-notes tree and stays as-is.)

## Layout

- `_config.yml` — Jekyll config (title, theme, permalinks)
- `index.md` — landing page
- `_posts/YYYY-MM-DD-title.md` — blog entries
- `assets/` — images; keep photos reasonably sized and prefer links to
  `research/pictures/` where the same photo already exists in-repo

## Planned articles (tracking issue)

- My first computer
- How I met Lee Felsenstein
- Finding the CoPower-88
- My battery-powered Osborne 1
- Modification to support Gotek drives with 3D-printed floppy-disk
  faceplate
- Why this project at all
- Build log (1/n)

Also planned: write-ups of the hardware modifications made to two of
the author's three Osborne machines (one extensive).

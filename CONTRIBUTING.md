# Updating the STAR Lab website

Please make website changes in a branch and open a pull request. The pull request checks build the full site, validate paper and member entries, and catch broken local links before anything is merged.

## Fastest preview: GitHub Codespaces

1. Open the repository on GitHub.
2. Select **Code**, then **Codespaces**, then **Create codespace on main**.
3. Wait for setup to finish. The website preview starts automatically and opens on port 4000.

The same setup works locally with VS Code, Docker, and the Dev Containers extension: open the repository and choose **Reopen in Container**.

## Add a paper

From the repository terminal, run:

```sh
ruby scripts/new_content.rb paper
```

The guided prompts create a correctly named file in `papers/_posts`. Then:

1. Add the thumbnail at the path shown in the new file.
2. Replace the abstract placeholder.
3. Preview the paper page and papers index.

If you prefer to create the file manually, copy `_templates/paper.md`. Omit links that are not available yet instead of writing “coming soon.”

## Add a team member

Run:

```sh
ruby scripts/new_content.rb member
```

Then add the profile image and replace the biography placeholder. Profile images should be square. The manual starting point is `_templates/member.md`.

Use these standard values:

- `level`: `faculty`, `grad`, or `undergrad`
- `position`: normally `PhD Student`, `MS Student`, or `BS Student`
- `alumni`: `true` only for alumni
- `next_position`: the alumnus’s next organization or program
- `co_advised`: `true` only when `co_advisor` is also provided

## Preview without a container

Install the Ruby version in `.ruby-version`, then run:

```sh
bundle install
bundle exec jekyll serve
```

Open `http://localhost:4000`. The container setup is recommended on Windows because it avoids native Ruby dependency differences.

## Run the same checks as a pull request

```sh
bundle exec ruby scripts/validate_content.rb
bundle exec ruby scripts/test_validate_site.rb
bundle exec jekyll build --trace
bundle exec ruby scripts/validate_site.rb _site
```

The first command reports the exact content file and field that needs attention. The second protects the generated-site checker against known edge cases. The final command checks generated page structure, image descriptions, accessibility references, and local links.

## Pull request checklist

- Preview the affected page on desktop and mobile.
- Check light and dark modes for visual changes.
- Keep source images reasonably sized; do not commit `_site` or cache folders.
- Confirm the automated **Website checks / Validate and build** check is green.

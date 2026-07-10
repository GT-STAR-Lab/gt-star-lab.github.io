![build workflow](https://github.com/GT-STAR-Lab/gt-star-lab.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)

## Structured Techniques for Algorithmic Robotics (STAR) Lab at Georgia Tech
PI: Harish Ravichandar

Current URL: https://star-lab.cc.gatech.edu/

Base URL: gt-star-lab.github.io

Adapted from [bedford.io](http://bedford.io/) 

## Editing the website

Create a pull request for website changes; please do not push directly to `main`.

### Previewing locally

```sh
bundle install
bundle exec jekyll serve
```

Open `http://localhost:4000`. Generated directories such as `_site` and `.sass-cache` are ignored and should not be committed.

### Adding a new lab member

1. Create a new branch or fork the repo
2. Add a Markdown file with your details in [`team/_posts`](team/_posts).
   - Use an existing lab member's file as a template.
3. Add a square profile picture to [`team/images`](team/images).
   - Make sure that your picture has a 1:1 (square) aspect ratio.
4. Follow file naming conventions (see existing files for examples).
5. Create a pull request

### Adding a new publication

1. Create a new branch or fork the repo
2. Add a Markdown file for the paper in [`papers/_posts`](papers/_posts).
3. Add a representative image to [`papers/images`](papers/images).
4. Follow file naming conventions (see existing files for examples).
5. Create a pull request



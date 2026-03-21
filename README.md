# resume

Personal resume built with LaTeX and XeTeX.

## PDF Builds

Go to the **Actions** tab, open the latest run, and download the artifact to view the built PDF. Every push to the default branch triggers a [GitHub Actions workflow](.github/workflows/build.yml) that builds the PDF and uploads it as an artifact.

## Building Locally

Requires [TeX Live](https://tug.org/texlive/) with XeTeX and [latexmk](https://ctan.org/pkg/latexmk).

```sh
make
```

The compiled PDF will be at `dist/main.pdf`.

To watch for changes and rebuild automatically:

```sh
make watch
```

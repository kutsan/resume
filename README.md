# resume

Personal resume built with LaTeX and XeTeX.

## PDF Builds

See [latest builds](https://github.com/kutsan/resume/actions/workflows/build.yml), open the latest run, and download the artifact to view the built PDF.

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

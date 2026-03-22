# resume

My personal resume built with [Typst](https://typst.app/).

## Preview

See [latest builds](https://github.com/kutsan/resume/actions/workflows/build.yml), open the latest run, and download the artifact to view the built PDF.

## Development

Requires [Typst](https://typst.app/) and [just](https://github.com/casey/just).

```sh
just build
```

The compiled PDF will be at `out/main.pdf`.

To watch for changes and rebuild automatically:

```sh
just watch
```

To remove build artifacts:

```sh
just clean
```

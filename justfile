export TYPST_FONT_PATHS := "fonts"

input := "main.typ"
out_dir := "out"
output := out_dir / "main.pdf"

build:
  mkdir -p {{out_dir}}
  typst compile {{input}} {{output}}

watch:
  mkdir -p {{out_dir}}
  typst watch {{input}} {{output}}

clean:
  rm -rf {{out_dir}}

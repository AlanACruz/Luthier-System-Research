# syntax=docker/dockerfile:1

FROM pandoc/latex
COPY . /data
RUN pandoc --from="markdown" --to="pdf" --output="test.pdf" test.md

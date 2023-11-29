# syntax=docker/dockerfile:1

FROM pandoc/latex AS output-build

COPY . /data

RUN mkdir /data/output

RUN pandoc --from="markdown" --to="pdf" --output="output/test.pdf" test.md

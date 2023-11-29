# syntax=docker/dockerfile:1

FROM pandoc/latex
COPY . /data
RUN mkdir output
RUN pandoc --from="markdown" --to="pdf" --output="output/test.pdf" test.md

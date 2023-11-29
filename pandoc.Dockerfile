# syntax=docker/dockerfile:1

FROM pandoc/latex
COPY . /data
RUN pandoc test.md

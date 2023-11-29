# syntax=docker/dockerfile:1

FROM pandoc/latex
COPY . /data
RUN pandoc --from="markdown" --to="latex" --output="test.latex" test.md
RUN pdflatex test.latex

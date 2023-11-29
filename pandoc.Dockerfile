# syntax=docker/dockerfile:1

FROM pandoc/latex
COPY . /
RUN make /app
CMD python /app/app.py

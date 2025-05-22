# FROM golang:1.17-alpine

# WORKDIR /app

# COPY go.mod ./
# COPY *.go ./
# COPY static ./static

# RUN go build -o /belajar-cicd-pemula

# EXPOSE 3000

# CMD ["/belajar-cicd-pemula"]

FROM python:3.8-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
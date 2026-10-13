# Makefile for LifeQuest
.PHONY: install test build run docker-build docker-up

install:
	npm install

test:
	npm test

build:
	npm run build

run:
	npm run dev

# Containerization (M5) targets
docker-build:
	docker build -t lifequest-web:latest .

docker-up:
	docker compose up --build -d
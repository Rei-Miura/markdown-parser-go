up:
	docker compose up -d
down:
	docker compose down
stop:
	docker compose stop
serve:
	docker exec -it markdown-parser-go bash -c 'go run main.go'
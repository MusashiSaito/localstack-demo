# Docker Composeの設定ファイル
DOCKER_COMPOSE_FILE = docker-compose.yml

# デフォルトターゲット
.PHONY: all
all: up

# Docker Composeでコンテナを起動
.PHONY: up
up:
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

# コンテナを停止して削除
.PHONY: down
down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down

# すべてのDockerコンテナを停止して削除
.PHONY: clean
clean:
	-docker stop $$(docker ps -aq)
	-docker rm $$(docker ps -aq)
	-docker rmi $$(docker images -q)

# その他のAWS CLIコマンドを実行
.PHONY: exec
exec:
	docker exec -it localstack sh

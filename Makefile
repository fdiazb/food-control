# Run project
up:
	@docker-compose -f docker-compose.yml \
		--project-directory . \
		-p food_app \
		up -d

dev:
	@docker-compose \
		  -f docker-compose.yml \
		  --project-directory ./ -p food_app \
		  down && \
		docker-compose -f docker-compose.yml \
		--project-directory ./ -p food_app \
		 build --no-cache && \
		docker-compose -f docker-compose.yml \
		--project-directory ./ \
		-p food_app \
		up -d

config:
	@docker-compose -f docker-compose.yml config

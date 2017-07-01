# Use development settings for running django dev server.
export DJANGO_SETTINGS_MODULE=backend.settingsdev

# Initializes virtual environment with basic requirements.
prod:
	pip install -r requirements.txt
	npm install --production

# Installs development requirements.
dev:
	pip install -r requirements.txt
	npm install

# Runs development server.
# This step depends on `make dev`, however dependency is excluded to speed up dev server startup.
# Alternatively python ./manage runserver
run:
	npm run dev & heroku local --procfile Procfile.dev

# Creates migrations and migrates database.
# This step depends on `make dev`, however dependency is excluded to speed up dev server startup.
migrate:
	python ./manage makemigrations
	python ./manage migrate

# Builds files for distribution which will be placed in /static/dist
build: prod migrate clean
	npm run build

# Cleans up the static/dist folder
clean:
	rm -rf static/dist

# Run linter
lint:
	@npm run lint --silent

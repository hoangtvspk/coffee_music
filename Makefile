run-dev:
	flutter run --flavor dev --dart-define=ENVIRONMENT=dev

run-prod:
	flutter run --flavor prod --dart-define=ENVIRONMENT=prod

build-dev:
	flutter build --flavor dev --dart-define=ENVIRONMENT=dev

build-prod:
	flutter build --flavor prod --dart-define=ENVIRONMENT=prod
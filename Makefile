runner:
	flutter pub run build_runner build --delete-conflicting-outputs
run-dev:
	flutter run --dart-define-from-file=dart_defines/dev.env
run-prod:
	flutter run --dart-define-from-file=dart_defines/prod.env
runner:
	dart run build_runner build --delete-conflicting-outputs
run-dev:
	flutter run --dart-define-from-file=dart_defines/dev.env
run-prod:
	flutter run --dart-define-from-file=dart_defines/prod.env
slang:
	dart run slang
format:
	dart format $(shell find lib -name "*.dart" -not \( -name "*.*freezed.dart" -o -name "*.*g.dart" \)) --set-exit-if-changed

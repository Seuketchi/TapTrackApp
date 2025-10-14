#!/bin/bash

echo "Installing latest packages for TapTrack..."

# Firebase
flutter pub add firebase_core
flutter pub add firebase_auth
flutter pub add cloud_firestore

# State management
flutter pub add flutter_bloc
flutter pub add bloc
flutter pub add provider
flutter pub add get_it
flutter pub add injectable

# Routing
flutter pub add go_router
flutter pub add go_router_builder

# JSON & models
flutter pub add freezed_annotation
flutter pub add freezed
flutter pub add json_annotation
flutter pub add json_serializable

# UI & utilities
flutter pub add cupertino_icons
flutter pub add gap
flutter pub add google_fonts
flutter pub add flutter_svg
flutter pub add flutter_staggered_grid_view
flutter pub add intl
flutter pub add flutter_localizations

# Dev dependencies
flutter pub add --dev build_runner
flutter pub add --dev flutter_gen_runner
flutter pub add --dev flutter_lints

echo "All packages installed successfully!"

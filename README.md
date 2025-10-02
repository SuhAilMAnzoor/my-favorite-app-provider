# my_favorite_app_provider

This Flutter project is a simple Favorite Items App built using Provider state management. The app displays a list of 30 items where each item can be marked as favorite or unfavorite by tapping on it. Favorited items are highlighted with a red heart icon, while non-favorited items show an outlined heart. The state of selected items is managed through a FavoriteProvider class, ensuring that only the necessary widgets are rebuilt using the Consumer widget, rather than the entire UI. Additionally, the app includes a navigation option to a separate My Favorites screen, where users can view all the items they have marked as favorites.


## 📱 Features

Display a list of items dynamically

Toggle items as favorite/unfavorite with a tap

Favorite items shown with a red heart ❤️, non-favorites with an outlined heart 🤍

Navigate to a separate screen to view only your selected favorites

Uses Consumer widget to rebuild only affected UI parts for better performance

## 🛠️ Tech Stack

- **Flutter** – UI framework  
- **Provider** – State management  

## 📂 Project Structure

lib/
├── provider/
│ └── favorite_provider.dart # Manages favorite items state
├── screens/
│ ├── favorite_screen.dart # Main screen with items list
│ └── myfavorite.dart # Screen showing selected favorites
└── main.dart # App entry point


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

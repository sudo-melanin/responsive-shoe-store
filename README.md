# Shoe Store Application

A responsive cross-platform e-commerce user interface built with Flutter. This project demonstrates modern mobile development practices, including centralized state management, responsive layout strategies, and strongly typed data models.

## Demonstration

[]

## Architecture

The codebase is structured to separate business logic from the user interface, ensuring scalability and maintainability:

* **/models:** Contains strongly typed data classes (e.g., CartItem) with JSON serialization and deserialization factory constructors for API readiness.
* **/providers:** Houses state management logic utilizing ChangeNotifier to maintain cart state securely across the application lifecycle.
* **/pages & /widgets:** UI components completely decoupled from state and business logic.
* **/core/theme:** Centralized application theming via abstract classes for consistent typography, sizing, and color schemes.

## Technical Features

* **Responsive Layouts:** Utilizes screen constraints, LayoutBuilder, SliverGrid, and SliverList to adapt the user interface seamlessly between mobile and desktop viewports without layout overflow errors.
* **Reactive State Management:** Implements Provider for localized, efficient widget tree rebuilds (e.g., dynamic cart badge updating and empty state handling) without relying on heavy global state refreshes.
* **Data Integrity:** Eliminates raw map references in favor of strictly typed Dart models, ensuring safe object comparison, predictable state mutation, and null safety.
# Shoe Store Application

A responsive cross-platform e-commerce user interface built with Flutter. This project demonstrates modern mobile development practices, including centralized state management, responsive layout strategies, and strongly typed data models.

## Demonstration

[Drag and drop your .mp4 screen recording here]

## Architecture

The codebase is structured to separate business logic from the user interface, ensuring scalability and maintainability:

* **/models:** Contains strongly typed data classes (e.g., CartItem) with JSON serialization and deserialization factory constructors for API readiness.
* **/providers:** Houses state management logic utilizing ChangeNotifier to maintain cart state securely across the application lifecycle.
* **/pages & /widgets:** UI components completely decoupled from state and business logic.
* **/core/theme:** Centralized application theming via abstract classes for consistent typography, sizing, and color schemes.

## Technical Features

* **Responsive Layouts:** Utilizes screen constraints, LayoutBuilder, SliverGrid, and SliverList to adapt the user interface seamlessly between mobile and desktop viewports without layout overflow errors.
* **Reactive State Management:** Implements Provider for localized, efficient widget tree rebuilds (e.g., dynamic cart badge updating and empty state handling) without relying on heavy global state refreshes.
* **Data Integrity:** Eliminates raw map references in favor of strictly typed Dart models, ensuring safe object comparison, predictable state mutation, and null safety.

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Fetch dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## Author

Amos Emmanuel
Mobile Application Developer

## Getting Started

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```

2. Fetch dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## Author

Amos Emmanuel
Mobile Application Developer
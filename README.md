# Meals

Meals is a Flutter application that showcases a meal planning and recipe exploration experience. It lets users browse meal categories, view detailed recipes, apply dietary filters, and mark meals as favorites using Riverpod for state management.

![meals](https://github.com/user-attachments/assets/a1894868-35c6-4be3-8118-810ccc28b3f6)


## Features

- **Meal Categories:** Browse a variety of meal categories such as Italian, Quick & Easy, Hamburgers, German, Light & Lovely, Exotic, Breakfast, Asian, French, and Summer.
- **Meal Details:** View detailed information about each meal including ingredients, steps, duration, complexity, and affordability.
- **Filters:** Apply dietary filters like Gluten-free, Lactose-free, Vegetarian, and Vegan to narrow down meal choices.
- **Favorites:** Mark meals as favorites and quickly access your preferred recipes.
- **Modern UI:** Built using Flutter’s Material 3 design with a clean, responsive interface.

## Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- An IDE such as [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)

### Installation

1. **Clone the repository:**

   ```sh
   git clone https://github.com/iamvedantp/meals
   cd meals

   ```

2. **Install dependencies:**

   ```sh
   flutter pub get

   ```

3. **Run the application:**

   ```sh
   flutter run
   ```

# Directory Structure

- lib/
- models/
  Contains data models for meals and categories.
- providers/
  Contains Riverpod providers that manage state for meals, filters, and favorites.
- screens/
  Includes the main screens such as categories, meal details, filters, and tabs.
- widgets/
  Contains reusable widgets like the CategoryGridItem, MealItem, and MainDrawer.
- data/
  Contains dummy data (in dummy_data.dart) for meals and categories.
- README.md
  This file, which provides an overview of the project.

# How It Works

- Meals Provider: Supplies the list of dummy meals defined in data/dummy_data.dart.
- Filters Provider: Manages filter settings (gluten-free, lactose-free, vegetarian, vegan) and filters the meals accordingly.
- Favorites Provider: Manages the list of favorite meals and includes functionality to toggle a meal’s favorite status.
- UI: Built using Flutter’s widget system combined with Material 3 design guidelines.

# Customization

- Dummy Data: Update data/dummy_data.dart with your own meals and categories.
- UI Modifications: Tweak screen and widget files under lib/screens/ and lib/widgets/ to change the look and feel.
- State Management: Modify the providers in lib/providers/ to adjust filtering, favorites, or meal management logic.

# Contributions

Contributions are welcome! If you have ideas for improvements or bug fixes, please open an issue or submit a pull request.

# License

This project is licensed under the MIT License. See the LICENSE file for more details.

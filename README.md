# Zenoa App Documentation
## Overview

Zenoa is a Flutter application providing a minimalistic shopping experience. This documentation outlines the app's architecture, key components, and usage.

## Table of Contents
1. **Getting Started**
2. **Architecture**
3. **Key Components**
4. **Demo Video and Screenshots**
5. **User Interface**
6. **Data Management**
7. **Contributing**
8. **License**

## Getting Started

### Prerequisites

- Flutter SDK
- Dart
- Android Studio or Visual Studio Code

# Installation
```
git clone https://github.com/SolomonB127/zenoa.git
cd zenoa
flutter pub get
flutter run
```

# Architecture
The app uses the Provider package for state management and follows a modular approach with separate pages and components.

## Key Components

### `main.dart`

-  Initializes the application.
-  Uses ChangeNotifierProvider to manage state with Shop.

### `intro_page.dart`

- Displays the introduction screen with branding and navigation to the Home page.

### `home_page.dart`

- Lists all available products.
- Provides navigation to the cart page.

### `cart_page.dart`

- Displays items added to the cart.
- Allows users to remove items and proceed to payment.

### `shop.dart`

- Manages the products available for sale and items in the cart.
- Handles adding and removing items from the cart

# Demo Video and Screenshots

- **Demo Video:** A walkthrough of the app showcasing navigation and features. 
[Watch the demo video](assets/video/zenoa_demo_video.mp4)

- **Screenshots:** Include images of the Welcome Page, 
![Intro Page](/assets/screenshots/Intropage.jpg)
  *Screenshot showing the Intro Page*

Shop Page, 
![Side Bar](/assets/screenshots/Sidebar.jpg)
  *Screenshot showing the Side Menu*

![Products](/assets/screenshots/Products.jpg)
  *Screenshot showing the Products*


![Added to Cart](/assets/screenshots/Pop_up.jpg)
  *Screenshot showing Products being added to Cart*

and Cart Page.
![Cart Page](/assets/screenshots/Cartpage_1.jpg)
  *Screenshot showing Cart Page*

![Cart Page](/assets/screenshots/Cartpage_2.jpg)
  *Screenshot showing Products in Cart Page*

## User Interface
The app features a clean, minimalistic design with intuitive navigation. Key UI elements include:

- **Logo and Branding:** Featured prominently on the Intro Page.
- **Navigation Drawer:** Provides easy access to different sections.
- **Product Listings:** Horizontal scrolling of products on the Home Page.
- **Cart Management:** Simple interface for viewing and editing cart contents.

## Data Management

- **Provider Pattern:** Used for efficient state management.
- **Product Data:** Defined in Product class with properties like name, price, and description.
- **Cart Operations:** Managed by the Shop class, which notifies listeners of changes.

## Contributing
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
# Tip Calculator

## Flutter Tip Calculator & Bill Splitter

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-Framework-02569B?logo=flutter&logoColor=white" alt="Flutter" />
  <img src="https://img.shields.io/badge/Language-Dart-0175C2?logo=dart&logoColor=white" alt="Dart" />
  <img src="https://img.shields.io/badge/UI-Material%20Design-757575" alt="Material Design" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-3DDC84" alt="Platforms" />
</p>

Tip Calculator is a modern Flutter application that makes calculating tips and splitting bills simple. Users can enter a bill amount, choose a tip percentage, view the total, and calculate each person's share.

## Key Features

- Enter a bill amount and calculate results instantly.
- Adjust the tip percentage with an interactive slider.
- Select a tip percentage using quick-selection buttons.
- View the tip amount and total bill.
- Split the bill between multiple people.
- Calculate the amount each person should pay.
- Responsive layout with a modern gradient-based interface.

## Technology Stack

| Area | Technologies |
| --- | --- |
| Framework and language | Flutter, Dart |
| UI | Material Design |
| Responsive layout | flutter_screenutil |
| Architecture approach | Reusable, feature-specific UI widgets |

## UI Components

The screen is built from reusable widgets to keep the interface organized and maintainable:

- **BillInput** – bill amount entry.
- **TipSlider** – interactive tip percentage control.
- **QuickTipButtons** – quick percentage selection.
- **ResultBox** – displays calculated amounts.
- **PersonSelector** – controls the number of people and shows the per-person amount.

## Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK (compatible with the constraint in `pubspec.yaml`)
- Android Studio or VS Code
- Android emulator or a physical device

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/elghamry55/Tip-Calculator-.git
   ```

2. Open the project directory:

   ```bash
   cd Tip-Calculator-
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the application:

   ```bash
   flutter run
   ```

## Project Structure

The project separates shared styling and reusable widgets from the tip calculator screen and its UI components.

```text
lib/
├── core/
│   ├── styles/
│   └── widgets/
└── features/
    └── tip_calculator/
        ├── screens/
        └── widgets/
```

---

**Developed with Flutter and Dart.**

**Mahmoud Elghamry**  
Flutter Developer

[GitHub Profile](https://github.com/elghamry55)

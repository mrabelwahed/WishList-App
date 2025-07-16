# 📜 WishList App

A beautifully simple Wish List app built using **SwiftUI** and **SwiftData** — allowing users to add, delete, and count their wishes with seamless performance and minimal code.

![SwiftUI + SwiftData](https://github.com/your-username/WishListApp/assets/banner.png)

## ✨ Features

- 📌 Add a new wish using a clean alert pop-up
- 🧹 Swipe-to-delete functionality
- 🔢 Real-time count of total wishes
- 💔 Empty state UI with friendly message
- 🔁 Reactive UI updates using `@Query` and `@Environment(\.modelContext)`
- 🧪 In-memory previews with sample data

## 🧰 Built With

- [SwiftUI](https://developer.apple.com/xcode/swiftui/) – Modern UI framework for Apple platforms
- [SwiftData](https://developer.apple.com/documentation/swiftdata/) – Apple’s new model-driven data persistence API (iOS 17+)

## 📸 Screenshots

| Home View | Add Wish | Empty State |
|-----------|----------|-------------|
| ![screenshot1](assets/home.png) | ![screenshot2](assets/add.png) | ![screenshot3](assets/empty.png) |

## 🚀 Getting Started

### Requirements

- iOS 17+
- Xcode 15+
- SwiftData supported device or simulator

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/WishListApp.git
   
open WhishList.xcodeproj

Run on your preferred iOS Simulator or Device

🧪 Preview With Sample Data
Use SwiftUI’s preview with sample data:

swift
Copy
Edit
#Preview("Sample Data") {
    let container = try! ModelContainer(for: Wish.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(Wish(title: "Read Golden Habits book"))
    container.mainContext.insert(Wish(title: "Buy App code"))
    container.mainContext.insert(Wish(title: "Make more money"))
    
    return ContentView().modelContainer(container)
}

🛠️ Project Structure
Wish.swift: The data model using @Model

ContentView.swift: Main view with logic to display, add, and delete wishes

WhishListApp.swift: SwiftUI App entry point with .modelContainer setup

🙌 Contributing
Pull requests are welcome! If you find a bug or have a suggestion, feel free to open an issue or fork the project.

📄 License
This project is open source and available under the MIT License.

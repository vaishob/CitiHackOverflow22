# CitiInvest - Citi HackOverflow 2022
# Citi Wealth Management Application

The Citi Wealth Management Application is designed to position Citi as the modern bank for wealth management solutions, catering to both clients and bankers in the Asia-Pacific market. It aims to drive client acquisition and strengthen client relationships by providing convenient access to important financial information and fostering improved communication between bankers and clients.

## Features & Functionality

### Authentication
- **Login/Logout:** Users can authenticate as either a Client-level (Basic) user or a Banker-level (Admin).

### Dashboard
- **Banker Dashboard:** Provides bankers with easy access to client portfolios, transaction history, and other relevant information for effective wealth management.
- **Client Dashboard:** Offers clients a consolidated view of their portfolio, including investment performance, asset allocation, and transaction details.

### Portfolio Management
- **Transparency:** Clients can conveniently access their portfolio information, enhancing transparency and fostering trust in Citi's wealth management solutions.

### Chat Functionality
- **Integrated Chat:** Facilitates real-time communication between bankers and clients, aiming to improve relationships and provide personalized financial advice.

## Technologies Used

- **Flutter (Frontend):** Utilized for developing a cross-platform mobile application with a modern and intuitive user interface.
- **Firebase (Backend):** Employs Firebase for user authentication, real-time database management, and cloud storage, ensuring scalability, security, and reliability.

## What's Next

### Realtime Data
- Implement real-time updates for portfolio information and transaction data, providing clients and bankers with the most up-to-date information.

### Commercial Database
- Integrate a commercial database to store and manage complex financial data, ensuring efficient data retrieval and analysis for wealth management operations.

### TikTok Integration
- Explore integration with social media platforms like TikTok to enhance brand visibility, engage with potential clients, and provide educational content on financial literacy.

### Migration to Cloud
- Migrate the application to a cloud-based infrastructure for improved scalability, flexibility, and cost-effectiveness, enabling seamless expansion and global accessibility.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Getting started continued:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Home Finder App

A Flutter-based **real estate & home services** app that lets users search for properties, view details, book shifting services, browse decor items, and connect with interior designers.

> This project is built with Flutter and uses Firebase Authentication (Email/Password + Google Sign-In), a backend REST API, and a variety of UI and state-management packages.

---

## 🚀 Features

- 🔎 Property search by location (Thana)
- 🏠 Property listing with details and image gallery
- ⭐ Favorite properties (UI-only toggle)
- 📦 Home shifting request form (submits to backend)
- 🛋 Decor category browsing + product listing
- 👨‍🎨 Designer directory
- 🧑‍💼 User authentication via Email/Password and Google Sign-In
- 🧩 Simple navigation (bottom navigation bar)

---

## 🧩 Project Structure

Key entry points:

- `lib/main.dart` - App bootstrap, Firebase init, and routing
- `lib/home.dart` - Main property listing + search
- `lib/login.dart` / `lib/register.dart` - Authentication flows
- `lib/layout.dart` - Bottom navigation + page wiring
- `lib/shifting.dart` - Shifting service form
- `lib/decor.dart` - Decor catalogue + product list
- `lib/designer.dart` - Designer directory
- `lib/PropertyDetailsPage.dart` - Property detail view

---

## 🛠 Setup & Running

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- A Firebase project (for Authentication)
- A backend REST API that implements the endpoints used in this app (see **Backend API** below)

### 1) Clone

```bash
git clone <repo-url>
cd "Home Finder APP"
```

### 2) Install Dependencies

```bash
flutter pub get
```

### 3) Configure environment variables

This app uses `flutter_dotenv` to load configuration from `.env`.

1. Copy the example file:

```bash
cp .env.example .env
```

2. Fill in your Firebase config values (from the Firebase console) and the backend URL values.

> Note: The app expects a working backend at `SERVER_URL` (default is `https://homefinder-backend.onrender.com`).

### 4) Run the app

```bash
flutter run
```

---

## 🔌 Backend API (Required)

The app expects a backend that supports the following (based on the current code):

- `GET ${Constants.server}/properties/getAll` - list properties
- `GET ${Constants.server}/properties/getByThana` - search properties by location
- `GET ${Constants.server}/products/getProducts` - list decor products
- `POST ${Constants.server}/shiftings/create` - submit shifting service request
- `POST ${Constants.server}/users/create` - create/update user profile on login/register
- `GET ${Constants.server}/users/getUserById` - fetch user profile data

> If you don't have a backend, you can point `SERVER_URL` to a local mock server or extend the app to use a local JSON data source.

---

## 🧪 Notes / Known Areas to Improve

- ✅ Favorites toggle is currently UI-only (not persisted)
- ✅ Property filtering (Rent/Buy) is only a UI toggle and does not affect backend requests
- ✅ Designer list and decor categories are hardcoded in the app
- ✅ Some screens (e.g., property details) show placeholders or static images

---

## 📚 Dependencies

This project uses (among others):

- `firebase_auth`, `firebase_core`, `google_sign_in`
- `provider` for state management
- `dio` for REST API calls
- `flutter_dotenv` for environment-based config
- `fluttertoast` for lightweight toast notifications
- `curved_navigation_bar` + `google_nav_bar` for navigation UI

---

## 🆘 Troubleshooting

- If the app fails on startup due to missing Firebase keys, ensure `.env` is present and populated.
- If property or decor lists are empty, confirm the backend is running and reachable via `SERVER_URL`.
- For Android emulators, use `SERVER_LOCALHOST=http://10.0.2.2:3000` when your backend runs locally.

---

## 📄 License

This repository currently has no license file. Add one if you plan to share this project publicly.

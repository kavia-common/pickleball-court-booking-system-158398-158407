# PicklePlay (pickleball_frontend)

A modern, playful Flutter frontend for booking pickleball courts. Features:
- User login/signup
- Role-based navigation with Admin dashboard
- Court browsing and booking
- Group size logic (2–8 players) with capacity validation
- Sticky header with pickleball paddle icon
- Vibrant, card-based responsive UI

## Tech
- Flutter (Material 3)
- Provider for state management
- flutter_dotenv for configuration
- shared_preferences for auth token storage
- http for REST API calls

## Environment configuration
Create a `.env` file (use `.env.example` as a template):

```
API_BASE_URL=https://your-fastapi.example.com
SITE_URL=https://your-site.example.com
APP_NAME=PicklePlay
```

Notes:
- If `API_BASE_URL` is not provided, the app runs in a local mock data mode so you can explore UI and flows.
- Do NOT commit `.env` to source control.

## Running
- flutter pub get
- flutter run

## Structure
- lib/src/app_theme.dart: Theme/colors and playful styles
- lib/src/env.dart: .env config reader
- lib/src/services/api_client.dart: REST client to the FastAPI backend
- lib/src/providers/: State management (Auth, Courts, Bookings)
- lib/src/pages/: UI pages (Landing, Auth, Home tabs)
- lib/src/widgets/paddle_icon.dart: Custom pickleball paddle icon

## Backend Endpoints (expected)
- POST /auth/login {email, password} -> {token, user}
- POST /auth/signup {name, email, password} -> {user}
- GET /courts -> [Court]
- POST /bookings -> Booking
- GET /bookings/me -> [Booking]
- GET /admin/summary -> KPIs

Update the endpoints as your backend evolves.

## Theming
- Primary: #39C26A
- Secondary: #FDBD10
- Accent: #345EF8

Rounded corners, card-based layout, and a sticky header with iconography.

## Testing
- Basic widget test ensures the landing renders and CTA buttons are visible.

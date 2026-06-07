---
layout: cv
title: Eralp Karaduman's Projects
published: true
---

## Projects

A deeper look at selected projects behind the roles listed in my CV.

### Starship Technologies

Starship Technologies operates a large fleet of autonomous delivery robots across multiple countries. As a full-stack engineer I built the web, mobile, and backend systems its field and operations teams use to run the fleet.

**Greenfield operations-management web platform** · 2026  
_Sole engineer + product owner · TypeScript, Hono, GraphQL, React, Redis, Prometheus, Grafana, OpenTelemetry, Amplitude_

- Built a full-stack ops web app from scratch (backend, React UI, infra) giving site leads and customer-success managers one live view of fleet status, targets, and exceptions.
- Hardest parts: aggregating live data from several upstream services into one fast, real-time view, and standing up the service's observability (structured logging, Prometheus/Grafana dashboards, OpenTelemetry tracing).
- Defined the success metric and grew weekly active usage to target across users in 8 countries.

**Operations control-center dashboard** · 2023–2024  
_Sole author · React, TypeScript, GraphQL_

- Sole-built a real-time dashboard aggregating cross-site health (plan, merchants, road closures on a live map, fleet, staffing) into one warnings view.
- Adopted by the control-center team; later built its standalone successor (the operations-management platform above), owning the product line across two generations.

**Mobile app re-platforming & delivery pipeline** · 2022–2026  
_Sole engineer (re-architecture + CI/CD) · React Native (Android), TypeScript, GraphQL, GitHub Actions, Docker, Detox_

- Migrated a field app (~450 MAU, 8 countries) off a constrained prototype framework to bare React Native + typed GraphQL.
- Built CI/CD from scratch (builds, signing, e2e, OTA), replacing a fully manual process where local builds were hand-uploaded to the device-management portal, so the team shipped updates and bug fixes far more frequently.

**Visual equipment inspection & damage-reporting system** · 2023–2026  
_Full-stack engineer + interaction design · React Native (interactive SVG diagram, video, barcode), Node/TypeScript, GraphQL_

- Built a guided flow on an interactive machine diagram (tap the damaged part) with video, spare-part tracking, ticket auto-linking, and de-dupe; flagged rollout + in-app training.
- Replaced ambiguous, duplicated free-form tickets with clear, structured repair reports.

**Hardware integration: native mobile printer plugin & returns (RMA) workflow** · 2022–2023  
_Built it · React Native native module (Java/Kotlin), USB/Bluetooth I/O, Node/TypeScript, GraphQL_

- Built a custom native module bridging the app to a USB/Bluetooth label printer, handling device I/O at the native layer and Android-version print-compatibility issues, plus the returns workflow and automatic return-order creation against the inventory system.

**Charging-infrastructure management tooling** · 2022–2026  
_Contributor (mobile/web/backend) · React Native, React, Node/TypeScript, GraphQL_

- Full-stack tooling to provision, monitor, repair, and track the fleet's custom charging stations across the field app, web panels (alerts, energy-management), and backend (scheduling, charger service, inventory).

**Certificate-based device sign-in for shared, externally-operated devices** · 2025–2026  
_Lead engineer · certificate/PKI auth, MDM-managed devices, React Native, Node/TypeScript_

- Built a certificate-based alternative to SSO for shared devices without per-user identities: the in-app certificate sign-in flow plus server-side certificate validation and session issuance.
- Shipped and in active phased rollout.

**Backend service powering a global field-operations app** · 2022–2026  
_Contributor → owner · Node.js, TypeScript, Kafka, GraphQL, MongoDB, push notifications, Cloudflare_

- Owned a backend service in an **event-driven microservices architecture** (Kafka for inter-service communication) powering a ~450-user, 8-country mobile app with real-time data, access control, and push notifications.
- Improved event-streaming reliability (Kafka consumer groups, crash-safe consumers), authorization, and infra/security.

### Arca

Freelance engagement as the sole mobile engineer, bootstrapping a content-curation app and its release infrastructure.

**Cross-platform mobile app & share-sheet extension**  
_Freelance, sole mobile engineer · React Native, TypeScript, iOS & Android_

- Built the React Native app shipped to iOS & Android, including a native share-sheet extension so users can save content into Arca from any other app.

**Mobile release infrastructure & backend support**  
_React Native, Fastlane, CodePush (OTA), GCP_

- Set up mobile CI/CD with Fastlane, automating iOS & Android release pipelines.
- Configured push notifications and the Apple Developer account from scratch.
- Set up over-the-air (OTA) updates with CodePush.
- Helped build background task queues in the GCP backend.

### Qvik

Consultancy work across several client engagements, plus internal technical sales.

**YLE (Finnish public broadcaster), creative content**  
_React Native, TypeScript, React, Redux, Clojure_

- **Hyvät katsojat**: TV show companion game built in React Native, embedded inside the yle.fi React Native TypeScript app. Contributed to the CMS backend in Clojure.
- **Elämäni biisi**: TV show companion game built in React Native, embedded inside the yle.fi React Native TypeScript app. Contributed to the CMS backend in Clojure.
- **"Tehtävä" quiz / voting / form tool**: Clojure backend with a TypeScript web frontend (React + Redux) driving a complex state system. The frontend is embedded into multiple web apps and also used as an internal tool, and the backend doubles as the backend for the TV game companion apps.

**OVORO, crypto investment app**  
_Flutter, Provider, Firebase_

- Built a crypto investment app from scratch in Flutter using Provider and InheritedWidgets, helping the client bootstrap their app business.
- Set up Firebase auth and notifications, the first-time user experience, and screen flows for critical user actions.

**Hype Hype / Frogmind, mobile game-creation app**  
_Flutter (embedded in a custom game engine)_

- Worked on Hype Hype, a mobile game-creation and creator-economy app, helping the client build their UI in Flutter on top of their custom game engine (Flutter embedded into the engine).
- Built critical UX flows such as content moderation and content-reporting UI.

**Technical sales**  
_Internal Qvik work_

- Worked on technical sales: project scope, time estimates, and offer pricing for a major global retail business and a major bank in Finland.

### Seriously Digital Entertainment

_To be filled in._

### DealDash

**DealDash mobile app**  
_Swift, PHP_

- Worked on the company's main mobile app in Swift, contributing to multiple new features and its PHP backend.

**Dropio**  
_Swift, PHP / Symfony, Node.js, Socket.IO_

- New business experiment: a new app with real-time Dutch auction bidding.
- App built in Swift; backend in PHP / Symfony plus Node.js with Socket.IO for realtime communication.

### CupsOn.Me

_To be filled in._

### Hipo

**Chroma, app for collectors**  
_Objective-C_

- Built a mobile app for collectors called Chroma in Objective-C, with complex UI/UX flows that were ahead of their time.
- (See also Fieldguide in the CV experience section.)

### Adphorus / Publik

_To be filled in._

### MagiClick

_To be filled in._

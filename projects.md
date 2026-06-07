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

- Built a read-only, mobile-first ops web app from scratch (backend, React UI, infra) giving site leads and customer-success managers a quick at-a-glance view of fleet status and targets across sites.
- Hardest parts: aggregating live data from several upstream services into one fast, real-time view, and standing up the service's observability (structured logging, Prometheus/Grafana dashboards, OpenTelemetry tracing).
- Defined the success metric, drove adoption to 100% of the targeted operations users, and grew weekly active usage to a peak 140% above its lowest week, across users in 8 countries.

**Mission Control: cross-site operational warnings dashboard** · 2023–2024  
_Sole author · React, TypeScript, GraphQL, built into the "Hype" hypervisor panel_

- Before this, site leads and operations staff had no single view of operational warnings: understaffed sites, offline robots, fleet issues, road closures, and weather alarms were scattered and easy to miss.
- Sole-built a real-time, per-service-area overview with at-a-glance red/green indicators across deliveries, tasks, online robots, staffing, merchants, fleet, closures, and weather alarms, letting ops spot problems across every site at once and drill into any area.
- Adopted by the control-center team; later succeeded by a separate read-only, mobile-first quick-glance tool (operations-overview, above), making me owner of the product line across two generations.

**Mobile app re-platforming & delivery pipeline** · 2022–2026  
_Sole engineer (re-architecture + CI/CD) · React Native (Android), TypeScript, GraphQL, GitHub Actions, Docker, Detox_

- Migrated a field app (~450 MAU, 8 countries) off a constrained prototype framework to bare React Native + typed GraphQL.
- Built CI/CD from scratch (builds, signing, e2e, OTA), replacing a fully manual process where local builds were hand-uploaded to the device-management portal, so the team shipped updates and bug fixes far more frequently.

**Visual equipment inspection & damage-reporting system** · 2023–2026  
_Full-stack engineer + interaction design · React Native (SVG-in-WebView diagram, video, barcode), Node/TypeScript, GraphQL_

- Built a guided inspection flow around an interactive 2D diagram of the delivery robot: the inspector taps a part to select it, then enters damage details for that exact component, attaching video evidence, tracking spare parts, and auto-linking and de-duplicating related tickets.
- Hardest part: making the diagram interactive by embedding an SVG in a WebView inside the React Native app and building a custom bidirectional event bridge between WebView and React Native to keep part selection and damage state in sync across the two.
- Replaced ambiguous, duplicated free-form tickets with clear, structured repair reports; shipped with a feature-flagged rollout and in-app training.

**Hardware integration: native mobile printer plugin & returns (RMA) workflow** · 2022–2023  
_Built it · React Native native module (Java/Kotlin), USB/Bluetooth I/O, Node/TypeScript, GraphQL_

- Built a custom native module bridging the app to a USB/Bluetooth label printer, handling device I/O at the native layer and Android-version print-compatibility issues, plus the returns workflow and automatic return-order creation against the inventory system.

**Charging-infrastructure management tooling** · 2022–2026  
_Contributor (mobile/web/backend) · React Native, React, Node/TypeScript, GraphQL_

- Full-stack tooling to provision, monitor, repair, and track the fleet's custom charging stations across the field app, web panels (alerts, energy-management), and backend (scheduling, charger service, inventory).

**Certificate-based device sign-in for shared, externally-operated devices** · 2025–2026  
_Lead engineer · certificate/PKI auth, MDM-managed devices, React Native, Node/TypeScript_

- Built a certificate-based alternative to SSO for shared devices without per-user identities: the in-app certificate sign-in flow plus server-side certificate validation and session issuance.
- Live in production, rolled out in stages across selected countries, sites, and key operators (currently enabled in a subset of countries).

**Backend service powering a global field-operations app** · 2022–2026  
_Contributor → owner · Node.js, TypeScript, Kafka, GraphQL, MongoDB, push notifications, Cloudflare_

- Owned a backend service in an event-driven microservices architecture (Kafka for inter-service communication) powering a ~450-user, 8-country mobile app with real-time data, access control, and push notifications.
- Improved event-streaming reliability (Kafka consumer groups, crash-safe consumers), authorization, and infra/security.

### Arca

Freelance engagement as the sole mobile engineer, bootstrapping a content-curation app and its release infrastructure.

**Cross-platform mobile app & share-sheet extension**  
_Freelance, sole mobile engineer · React Native, TypeScript, iOS & Android_

- Built the React Native app shipped to iOS & Android, including a share-sheet extension that lets users save content into Arca from any other app.
- Built the share-sheet UI in React Native too, running it from a second, slightly modified entrypoint in the same codebase rather than as a separate native UI.
- Hardest parts:
  - Holding the user's session inside the extension and refreshing it there, then syncing the fresh credentials back so the main app stayed signed in, sharing credentials between the extension and app via iOS app groups and a shared keychain.
  - Staying within the iOS share extension's tight memory budget so the OS did not kill the React Native runtime mid-share.
  - Normalizing the different content types the OS passes in (URLs, text, images) into one save flow.

**Mobile release infrastructure & backend support**  
_React Native, Fastlane, CodePush (OTA), GCP_

- Set up mobile CI/CD with Fastlane, automating iOS & Android release pipelines, including building and signing the extra share-extension target and its separate entrypoint.
- Configured push notifications and the Apple Developer account from scratch.
- Set up over-the-air (OTA) updates with CodePush.
- Helped build background task queues in the GCP backend.

### Qvik

Consultancy work across several client engagements and also internal technical sales.

**YLE (Finnish public broadcaster), creative content**  
_Contributor · React Native, TypeScript, React, Redux, Clojure_

- **Hyvät katsojat**: TV show companion game built in React Native, embedded inside the yle.fi React Native TypeScript app. Contributed to the CMS backend in Clojure.
- **Elämäni biisi**: TV show companion game built in React Native, embedded inside the yle.fi React Native TypeScript app. Contributed to the CMS backend in Clojure.
- **"Tehtävä" quiz / voting / form tool**: Clojure backend with a TypeScript web frontend (React + Redux) driving a complex state system. The frontend is embedded into multiple web apps and also used as an internal tool, and the backend doubles as the backend for the TV game companion apps.

**OVORO, crypto investment app**  
_Contributor · Flutter, Provider, Firebase_

- Built a crypto investment app from scratch in Flutter using Provider and InheritedWidgets, helping the client bootstrap their app business.
- Set up Firebase auth and notifications, the first-time user experience, and screen flows for critical user actions.

**Technical sales**  
_Contributor (acting tech lead on the engagements) · Internal Qvik work_

- Worked on technical sales: project scope, time estimates, and offer pricing for a major global retail business and a major bank in Finland.

### Hype Hype / Frogmind

Freelance engagement (similar in shape to Arca), building app UI on top of a custom game engine.

**Mobile game-creation & creator-economy app**  
_Flutter (embedded in a custom game engine)_

- Worked on Hype Hype, a mobile game-creation and creator-economy app, helping the client build their UI in Flutter on top of their custom game engine (Flutter embedded into the engine).
- Built critical UX flows such as content moderation and content-reporting UI.

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

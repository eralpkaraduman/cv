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

_To be filled in._

### Qvik

_To be filled in._

### Seriously Digital Entertainment

_To be filled in._

### DealDash

_To be filled in._

### CupsOn.Me

_To be filled in._

### Hipo

_To be filled in._

### Adphorus / Publik

_To be filled in._

### MagiClick

_To be filled in._

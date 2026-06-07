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
- Defined the success metric, drove adoption to 100% of the targeted operations users, and grew weekly active usage to a peak 140% above its lowest week, across users in 9 countries.

**Mission Control: cross-site operational warnings dashboard** · 2023–2024  
_Sole author · React, TypeScript, GraphQL, built into the "Hype" hypervisor panel_

- Before this, site leads and operations staff had no single view of operational warnings: understaffed sites, offline robots, fleet issues, road closures, and weather alarms were scattered and easy to miss.
- Sole-built a real-time, per-service-area overview with at-a-glance red/green indicators across deliveries, tasks, online robots, staffing, merchants, fleet, closures, and weather alarms, letting ops spot problems across every site at once and drill into any area.
- Adopted by the control-center team; later succeeded by a separate read-only, mobile-first quick-glance tool (operations-overview, above), making me owner of the product line across two generations.

**Mobile app re-platforming & delivery pipeline** · 2022–2026  
_Sole engineer (re-architecture + CI/CD) · React Native (Android), TypeScript, GraphQL, GitHub Actions, Docker, Detox_

- Migrated a field app (~450 MAU, 9 countries) off a constrained prototype framework to bare React Native + typed GraphQL.
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

- Owned a backend service in an event-driven microservices architecture (Kafka for inter-service communication) powering a ~450-user, 9-country mobile app with real-time data, access control, and push notifications.
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
_Contributor · Flutter (forked, embedded in a custom C/C++ game engine)_

- Worked on Hype Hype, a mobile game-creation and creator-economy app, building UI in Flutter on top of the client's custom game engine, with Flutter embedded into the engine.
- Built critical UX flows such as content moderation and content-reporting UI.
- Hardest parts:
  - Working against a non-conventional Flutter setup: a fork of Flutter that was hard to keep in sync with mainline, requiring work down in the C/C++ toolchain.
  - Cross-communication between the Flutter UI layer and the C engine.
  - Managing UI state in Flutter without a persistent Flutter instance (unlike a regular Flutter app, the engine did not keep one alive), which made holding state across the UI complex.

### Seriously Digital Entertainment

**Live-content & A/B testing platform (CMS) for the game**  
_Full-stack + Unity tooling · Java, React, Unity3D (AssetBundles, ScriptableObjects, editor tooling), Docker, Kubernetes, GCP_

- Built a CMS in two parts: a full-stack Java server with a React web frontend, and Unity-side tooling with its own custom editor tool windows inside the game project.
- Authored seasonal content and A/B test variants (both UI and code behaviour) as Unity ScriptableObjects packaged into AssetBundles; the tooling serialized them and pushed them to the web app, which served them on request so the game could sideload and deserialize them at runtime, shipping new content and experiments live without an app-store release.
- Built the scheduler that decided which variant to serve, with every available variant and experiment registered and managed through the web UI.
- Hardest parts:
  - Reliably serializing and deserializing the AssetBundle and ScriptableObject variants across the Unity-to-web boundary.
  - Designing the scheduler and the variant/experiment management UI, and building the whole pipeline end to end.
  - Running the mobile game headless in the cloud to test variants against it, which meant containerizing a headless Unity build.

**Native Unity3D plugins**  
_Contributor · Unity3D, Objective-C (iOS), Java (Android)_

- Developed native plugins bridging Unity3D to iOS (Obj-C) and Android (Java) platform features.

**Operations dashboards**  
_ELK stack, GCP, Kubernetes_

- Built operations dashboards on the ELK stack running on GCP and Kubernetes.

**On-prem CI/CD & on-device performance testing**  
_Jenkins (Groovy), GameBench, on-prem build servers_

- Built and ran the on-prem CI/CD system on Jenkins, writing extensive custom pipelines in Groovy.
- Ran GameBench performance tests on real phones physically connected to the on-prem build servers.
- Managed scheduled nightly, ad-hoc, and release builds.

### DealDash

**DealDash mobile app**  
_Contributor · Swift, PHP_

- Worked on the company's main mobile app in Swift, contributing to multiple new features and its PHP backend.

**Dropio: real-time Dutch-auction app**  
_iOS + realtime backend · Swift, Node.js, Socket.IO, PHP / Symfony_

- A new-business experiment: a standalone app with live, real-time Dutch-auction bidding, built in Swift with a PHP/Symfony backend and a Node.js + Socket.IO realtime layer.
- Hardest parts:
  - Building and scaling the Node.js/Socket.IO server to broadcast live auction state (price and countdown) to all connected clients in real time.
  - Enforcing bid integrity to prevent cheating: locking a bid once submitted and rejecting any bid placed after the auction had ended.
  - Running many parallel auctions concurrently.
  - Building automated bidder bots that participated in auctions alongside real users.

### CupsOn.Me

**Mobile-first coffee discovery & purchasing platform**  
_Co-founder (one of two technical founders) · iOS (Objective-C), Android (Java)_

- Co-founded the startup and built both native clients from scratch: the iOS app in Objective-C and the Android app in Java, a mobile-first platform for discovering and buying from third-wave coffee shops.
- Built in-app credit purchasing through a local payment provider: users entered card details and completed a 3D Secure verification flow (ahead of its time), then spent the credits at the venue.
- Built the in-venue redemption flow: the user presented a keypad confirmation screen and the venue confirmed the spend by entering their own code.
- Maps-based shop discovery was the most advanced piece of the UI.
- Shipped to the App Store and Google Play and rolled out to real coffee shops across Dublin, London, and Istanbul.

### Hipo

**Chroma (Fieldguide), iOS app for collectors**  
_iOS developer · Objective-C_

- Built Chroma (tagline "Fieldguide"), an Objective-C iOS social network for collectors, with image-heavy galleries and polished UI ahead of its time.
- Hardest parts:
  - Keeping long, image-heavy lists fast and memory-efficient by rendering content just ahead of where the user was about to scroll and aggressively recycling view objects to stay within memory limits.
  - Managing complex UI state across many screens, including deep drill-down navigation from top-level categories into sub-categories and individual species.

### Adphorus / Publik

**Cevap.Tv, video how-to platform**  
_Mobile + video streaming infrastructure · Objective-C (iOS 6), Flash/AS3, Wowza, HLS/FLV, SMIL, Node.js, FFmpeg, AWS (EC2, S3)_

- Built the iPad app for Cevap.Tv, a YouTube-like video platform, with a two-column layout in Objective-C for iOS 6, which was technically challenging for its time.
- Built the video streaming backend on Wowza: a multi-bitrate adaptive HLS and FLV streaming server driven by SMIL configurations, deployed on AWS.
- Built a custom Flash/AS3 video player and integrated Google's video ads (IMA) SDK into it.
- Built a companion video-processing service in Node.js that used FFmpeg to stitch intros onto source videos, transcode them into multiple bitrates, store the outputs in S3, and generate the SMIL configurations; deployed with pm2 on AWS EC2.

**Adphorus, Facebook ads management SaaS**  
_Mobile developer · iOS (Objective-C), Android (Java)_

- Built the native iOS and Android clients for Adphorus, a SaaS platform for managing Facebook ad campaigns, focused on campaign monitoring with charts and adjustable bid-rate controls.

### MagiClick

Senior Flash developer, later team lead of 6 (2012). Built websites, advergames, and rich-media campaigns.

**Multiplayer Flash advergames**  
_Senior Flash developer · ActionScript 3, Red5 (multiplayer server), Box2D, Papervision3D_

- Built multiplayer advergames on a Red5 game server with matchmaking, lobby, chat, and leaderboards, where players competed for prizes over a campaign period.
- Built the games in AS3, some using Box2D physics and some using Papervision3D for 3D graphics.

**Interactive in-store electronics experiences**  
_Hardware + software · Arduino, sensors, Flash_

- Built rich-media experiences combining Arduino and sensors with software, deployed into grocery stores as interactive installations.

**Early augmented reality / marker-detection experiences (FLARToolKit)**  
_FLARToolKit, Papervision3D, ActionScript 3_

- Built early augmented-reality experiences with FLARToolKit (the first Flash-based Augmented Reality library), doing webcam marker detection well ahead of its time.
- One registered marker patterns for 29 letter stickers so players could complete a collection by showing each sticker to the webcam.
- Another recognised a marker and mounted an animated 3D object (Papervision3D) onto the live camera view where the sticker appeared, like a toy.

## Personal projects

**[LinkedFin](https://linkedfin.net): multilingual fish-name etymology database**  
_Personal project, solo · React 19, TanStack (Start/Router/Query), TypeScript, SQLite-WASM, Kysely, Fuse.js, Cloudflare Pages + Pages Functions + D1, Vite, Tailwind ([source](https://github.com/eralpkaraduman/LinkedFin))_

- A backendless single-page app: the entire fish-name etymology database ships as a SQLite file that the browser loads and queries fully client-side via the official SQLite WASM build (Kysely for queries, Fuse.js for fuzzy search), so all search and browsing happen in the frontend with no server or API.
- Solved per-page link previews, which a JS-only SPA normally cannot have because crawlers do not run the client code: a Cloudflare Pages Function injects per-page Open Graph / Twitter meta tags via HTMLRewriter, and a separate function renders the preview image dynamically at the edge (workers-og).
- Backed the OG data at the edge with a Cloudflare D1 database, kept in sync with the source SQLite database by a CI step that replicated it into D1; later simplified the pipeline to a build-time JSON snapshot bundled into the functions.

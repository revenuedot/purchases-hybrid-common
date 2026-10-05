<!-- revenuedot:readme:start -->
<p align="center"><a href="https://revenuedot.app"><picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/revenuedot/revenuedot/main/brand/kit/wordmark/revenuedot-lockup-white.svg">
  <img alt="RevenueDot" src="https://raw.githubusercontent.com/revenuedot/revenuedot/main/brand/kit/wordmark/revenuedot-lockup-black.svg" height="40">
</picture></a></p>

# RevenueDot Purchases Hybrid Common

This is RevenueDot's MIT fork of RevenueCat's `purchases-hybrid-common`: the same classes and method names, pointed at a RevenueDot server ([RevenueDot Cloud](https://app.revenuedot.app/signup) at `https://api.revenuedot.app`, or one you host) with RevenueDot's response-signing key built in, and kept in sync with upstream.

[![License: MIT](https://img.shields.io/badge/license-MIT-blue)](LICENSE) [![CocoaPods](https://img.shields.io/cocoapods/v/RevenueDotPurchasesHybridCommon?label=CocoaPods)](https://cocoapods.org/pods/RevenueDotPurchasesHybridCommon) [![Maven Central](https://img.shields.io/maven-central/v/app.revenuedot.purchases/purchases-hybrid-common?label=Maven%20Central)](https://central.sonatype.com/artifact/app.revenuedot.purchases/purchases-hybrid-common) [![npm](https://img.shields.io/npm/v/@revenuedot/purchases-typescript-internal?label=npm)](https://www.npmjs.com/package/@revenuedot/purchases-typescript-internal) [![Upstream](https://img.shields.io/badge/upstream-RevenueCat%2Fpurchases--hybrid--common_19.4.1-lightgrey)](https://github.com/RevenueCat/purchases-hybrid-common)

## Install

You never install this package yourself. It is the shared native and TypeScript layer under the RevenueDot [React Native](https://github.com/revenuedot/react-native-purchases), [Flutter](https://github.com/revenuedot/purchases-flutter), [Capacitor](https://github.com/revenuedot/purchases-capacitor), [Unity](https://github.com/revenuedot/purchases-unity) and [Cordova](https://github.com/revenuedot/cordova-plugin-purchases) SDKs, which pull it in. Version 19.4.1 is published as:

| Registry | Package | Name kept |
|---|---|---|
| CocoaPods | `RevenueDotPurchasesHybridCommon`, `RevenueDotPurchasesHybridCommonUI` | modules `PurchasesHybridCommon`, `PurchasesHybridCommonUI` |
| Swift Package Manager | `https://github.com/revenuedot/purchases-hybrid-common` at `19.4.1-revenuedot` | same products |
| Maven Central | `app.revenuedot.purchases:purchases-hybrid-common`, `-ui`, `-store-galaxy` | Kotlin packages |
| npm | `@revenuedot/purchases-typescript-internal`, `-esm`, `@revenuedot/purchases-js-hybrid-mappings` | installed through npm aliases by the wrappers |

## Configure

```ts
// Configure the wrapper SDK, not this package: its setProxyURL and configure calls pass through this layer
// to RevenueDot's native iOS and Android SDKs, which already carry RevenueDot's host and signing key.
await Purchases.setProxyURL("https://revenuedot.example.com");   // self-hosted server only
Purchases.configure({ apiKey: "appl_..." });
```

The fork already trusts RevenueDot's signing key, so no signature or verification setting is needed. Full guide: https://revenuedot.app/docs/sdks/hybrid-common.

## What RevenueDot adds

- **RevenueDot's native SDKs all the way down:** this layer pins RevenueDot's [iOS](https://github.com/revenuedot/purchases-ios), [Android](https://github.com/revenuedot/purchases-android) and [web](https://github.com/revenuedot/purchases-js) forks, so a wrapper built on it never talks to RevenueCat.
- **Start free on [RevenueDot Cloud](https://app.revenuedot.app/signup)**: free up to $10,000 a month of tracked revenue, then 0.5%, never more than $999 a month ([pricing](https://revenuedot.app/pricing)).
- **The same REST API and webhook payloads** as RevenueCat, so your backend and integrations keep working ([API reference](https://revenuedot.app/docs/api)).

## Use with your coding agent

Coding agents can read this repository's docs and code on demand, so they use the right package and imports:

- **Context7:** https://context7.com/revenuedot/purchases-hybrid-common
- **DeepWiki:** https://deepwiki.com/revenuedot/purchases-hybrid-common
- **GitMCP:** https://gitmcp.io/revenuedot/purchases-hybrid-common

## Links

- **Docs for this SDK:** https://revenuedot.app/docs/sdks/hybrid-common
- **Releases and changelog:** https://github.com/revenuedot/purchases-hybrid-common/releases (tags `<upstream version>-revenuedot`; upstream's changes are in `CHANGELOG.md`)
- **RevenueDot server and dashboard:** https://github.com/revenuedot/revenuedot
- **Fork pipeline (what we change and how upstream is merged):** https://github.com/revenuedot/revenuedot/tree/main/scripts/forks

RevenueDot is not affiliated with RevenueCat, Inc. RevenueCat's copyright notice stays in `LICENSE`; RevenueDot's changes are MIT too.

---

## Upstream README (RevenueCat's, unchanged)
<!-- revenuedot:readme:end -->

# purchases-hybrid-common

Common files and libraries for RevenueCat's Hybrid SDKs. This repository contains 4 distinct libraries that provide shared functionality across different platforms and implementations.

## Libraries

### 1. Android (`android/`)
Contains mappings and utilities for RevenueCat hybrid SDKs to interface with the native Android library. This library provides the bridge between hybrid frameworks and the RevenueCat Android SDK, handling platform-specific implementations and data transformations.

### 2. iOS (`ios/`)
Contains mappings and utilities for RevenueCat hybrid SDKs to interface with the native iOS library. This provides the necessary bridge to connect hybrid frameworks with the RevenueCat iOS SDK, managing iOS-specific functionality and data transformations.

### 3. TypeScript (`typescript/`)
Shared TypeScript types and interfaces commonly used by both [react-native-purchases](https://github.com/RevenueCat/react-native-purchases) and [purchases-capacitor](https://github.com/RevenueCat/purchases-capacitor). This library ensures type consistency across different hybrid implementations by providing a single source of truth for common data structures, enums, and type definitions.

- **Package**: `@revenuecat/purchases-typescript-internal`
- **Purpose**: Internal shared TypeScript code for hybrid SDKs
- **Note**: Not intended for external usage

### 4. JavaScript Hybrid Mappings (`purchases-js-hybrid-mappings/`)
Contains mappings from purchases-js for use by hybrid frameworks that support web platforms. This library enables hybrid SDKs to leverage RevenueCat's web functionality through standardized mappings and interfaces.

- **Package**: `@revenuecat/purchases-js-hybrid-mappings`
- **Dependencies**: Built on top of `@revenuecat/purchases-js`
- **Purpose**: Bridge between purchases-js and hybrid implementations

## Development setup

Install [mise](https://mise.jdx.dev/), then from the repo root:

```bash
mise install
```

That installs Java, Ruby, and Node from `mise.toml` / `mise.lock`. Yarn is provided via corepack.

**Exceptions (not managed by mise):** Xcode for iOS work, Android SDK for local Android builds.


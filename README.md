<!-- revenuedot:banner:start -->
> [!NOTE]
> **Fork of RevenueCat's MIT SDK, maintained by RevenueDot, not affiliated with RevenueCat.** It keeps the upstream public API (`Purchases.configure`, `Purchases.shared`, every class and method name), so app code and RevenueCat's guides work unchanged. It talks to [RevenueDot](https://github.com/revenuedot/revenuedot) at `https://api.revenuedot.app` by default (`setProxyURL` still points it at a self-hosted server) and verifies RevenueDot's response signatures. RevenueCat's copyright notice is kept in `LICENSE`. Patches: [scripts/forks](https://github.com/revenuedot/revenuedot/tree/main/scripts/forks). **Status: publishing to package registries is in progress.**
>
> **Install:** native pods `RevenueDotPurchasesHybridCommon`, Maven `app.revenuedot.purchases:purchases-hybrid-common`, npm `@revenuedot/purchases-typescript-internal`. Wrappers (React Native, Flutter, Capacitor, Unity, Cordova) pull these in for you.
>
> The upstream README follows, unchanged. Where it says RevenueCat's dashboard or API, use RevenueDot's.
<!-- revenuedot:banner:end -->

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


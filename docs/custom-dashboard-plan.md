# Custom React / TypeScript TV dashboard — product brief

## Objective

Create a clean, quick, remote-controlled interface for favorite destinations and optional integrations on a 2018 Samsung Tizen TV. This will be a **normal Tizen web app**, not a replacement for Samsung Smart Hub.

## MVP user stories

- Navigate using directional remote keys (up/down/left/right), Enter and Back only.
- See a large, high-contrast focus ring on selectable cards.
- Customize card labels, order, and visibility using local settings.
- Display lightweight status such as time.
- See graceful fallback UI when an external app launch is unsupported.
- Restore normal Smart Hub simply by leaving our app.

## Out of scope for MVP

Root, firmware modifications, replacing the Home button behavior, removing protected Samsung applications, bypassing subscriptions/DRM, or routing TV traffic through custom proxies.

## Proposed stack

- **TypeScript + React** with small CSS footprint; consider Vite after checking Tizen Web engine compatibility.
- Samsung/Tizen web app packaging and signing (`.wgt`).
- A small device API adapter with feature detection and browser fallbacks.
- No mandatory cloud services; no secrets in app storage.

## Display concept

```text
┌──────────────────────────────────────────────────────┐
│ My TV                                      17:00     │
│                                                      │
│ [ Watch ]    [ Music ]    [ Photos ]    [ Settings ] │
│     ↑ focused item has a clear visible outline      │
│                                                      │
│ Arrows: move    Enter: select     Back: exit         │
└──────────────────────────────────────────────────────┘
```

## Implementation milestones

1. Create `apps/tv-dashboard/` as browser-only prototype.
2. Implement a deterministic 2D keyboard focus/navigation module and tests.
3. Map Samsung remote buttons via documented Tizen key APIs (including Back behavior).
4. Validate old Tizen browser support; transpile/polyfill only as needed.
5. Package a minimal signed `.wgt`, install it through official tooling, test on TV.
6. Measure startup, focus reliability, and input latency on actual hardware.
7. Research native app launching only through documented supported APIs; don't promise impossible shortcuts.

**Definition of done (first prototype):** keyboard-only usable, obvious focus state, no mouse dependency, customizable placeholders, browser tests, no unverified system app launching.

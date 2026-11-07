# Samsung Tizen Lab

A safe, hands-on lab for learning how to customize a Samsung Smart TV, sideload Tizen applications, experiment with [TizenBrew](https://github.com/reisxd/TizenBrew), and eventually build our own TV-friendly interface with **TypeScript + React**.

**Current state:** planning and documentation only. Nothing has been installed, rooted, or changed on the TV yet.

> The aim is to learn by experimenting on a TV we own—not to bypass accounts, attack third-party devices, or make irreversible changes.

## Target device

| Field | Value |
|---|---|
| Brand / model | Samsung UE43NU7120 |
| Approximate model year | 2018 |
| Operating system | Samsung Tizen (likely Tizen 4.0 for this model generation; verify on device/SDK) |
| Firmware observed | `T-KTSUDEUC-1341.2` |
| Host computer | Mac (check Intel vs Apple Silicon before installing any tools) |
| Current step | Enable Developer Mode; no completion confirmed |

Source: **About This TV** photos provided in our conversation. Serial number, MAC addresses, smart-hub identifiers, and other unique IDs are intentionally omitted from this repository.

## What we want to achieve

1. Learn Tizen development and how TV apps are packaged and installed.
2. Experiment with the [TizenBrew](https://github.com/reisxd/TizenBrew) ecosystem and unofficial apps.
3. Learn which unwanted shortcuts/apps can be hidden, rearranged, or removed **through normal TV settings**.
4. Build a clean, remote-control-friendly custom dashboard (React + TypeScript) with favorite apps, launch shortcuts where supported, and optional media/smart-home integrations.
5. Keep changes reversible and document any limitations.

**Important limitation:** This is *not* Android TV / Google TV. **Android ADB and Android launchers do not apply.** Samsung's Tizen developer mode allows testing/installing apps, but **does not grant root access**, remove protected system apps, or replace the system Smart Hub. A custom app can look like an alternative home screen when launched, but making it the OS home screen is a separate, generally unsupported goal.

## Realistic capability matrix

| Experiment | Expectation | Notes |
|---|---|---|
| Enable Samsung Developer Mode | Officially supported | Enter `12345` in Apps / App Settings, set Host PC IP, reboot |
| Connect from Mac with Tizen tools / `sdb` | Officially supported | TV and Mac must share a reachable network |
| Install a properly signed `.wgt` Tizen TV app | Supported development workflow | Certificate/profile setup may be required |
| Try TizenBrew | Promising | Its documentation lists Tizen 3.0+ (2017+) but success depends on device/firmware |
| Create a React/TypeScript dashboard app | Feasible | Package as Tizen Web app after testing browser compatibility |
| Hide / rearrange some normal app shortcuts | May be possible | Depends on this TV's Smart Hub/settings; not equivalent to deleting system apps |
| Remove protected Samsung system apps | Not normally supported | Do not attempt via undocumented shell commands |
| Permanently replace Smart Hub or root Tizen | Not an ordinary supported path | Needs separate model+firmware-specific research and explicit risk acceptance |

## Roadmap

- [ ] **M0 — Observe and document:** Confirm exact OS version, whether the Mac is Intel/Apple Silicon, network setup and current Home UI. Do not publish device identifiers.
- [ ] **M1 — Developer Mode:** Follow [`docs/getting-started.md`](docs/getting-started.md) and confirm popup, reboot, and developer indicator.
- [ ] **M2 — Host connection:** Install compatible Tizen tools as needed; test read-only `sdb devices`.
- [ ] **M3 — First third-party app:** Try TizenBrew using the *official project* instructions; record whether installation launches successfully.
- [ ] **M4 — Non-destructive customization:** Inventory app shortcuts and documented TV preferences; take before/after photos.
- [ ] **M5 — Custom dashboard prototype:** Implement and test TV focus/navigation behavior in browser.
- [ ] **M6 — Native Tizen packaging:** Package, sign, and launch a custom `.wgt` on the TV.
- [ ] **M7 — Explore integrations:** App launch capabilities, media state, and smart-home controls *only through supported APIs*.

See [`docs/custom-dashboard-plan.md`](docs/custom-dashboard-plan.md) for proposed requirements and [`docs/experiment-log.md`](docs/experiment-log.md) for a test log.

## First hands-on session

1. Confirm TV and Mac are on the same local network.
2. On Mac: open **System Settings → Wi-Fi → Details → TCP/IP**; locate the Mac's IPv4 address. Do not confuse it with the TV's IP.
3. On TV: **Home → Apps** (on some firmware: **Apps → App Settings**); enter **`12345`** with the remote/on-screen keypad.
4. In Developer Mode popup: set **Developer Mode = On**; **Host PC IP** = Mac's *local IPv4 address*; accept and restart.
5. Reopen Apps and check for the developer-mode indicator. Record success/failure in the experiment log.
6. Only then proceed to the SDB connectivity test and TizenBrew Installer. Don't install or disable anything yet.

Samsung's official instructions: https://developer.samsung.com/smarttv/develop/getting-started/using-sdk/tv-device.html

## Project layout

```text
.
├── README.md                         # Overview and milestones
├── AGENTS.md                         # Working rules for Codex, Claude, other coding agents
├── CLAUDE.md                         # Entry point for Claude Code
├── PUBLISHING.md                     # How to publish this project privately to GitHub
├── docs/
│   ├── tv-profile.md                # Hardware/software baseline, privacy-safe
│   ├── getting-started.md           # Step-by-step Mac + TV workflow
│   ├── tizenbrew.md                 # Third-party installation notes
│   ├── custom-dashboard-plan.md     # React/TypeScript UI brief
│   ├── safety.md                    # Safety and rollback principles
│   ├── experiment-log.md            # Test notes template
│   └── references.md                # Official and community links
└── scripts/check-host.sh            # Read-only environment checks on Mac
```

## Keep research and implementation separate

This repository starts as a **learning and planning workspace**. There is no TV app yet; do not imply it is already running. When building, create a dedicated application directory such as `apps/tv-dashboard/` and confirm the supported Tizen API baseline first.

## Related inspiration

- X post discussed: https://x.com/VaibhavSisinty/status/2111397390439911555 — content not independently retrieved/verified.
- Android TV customization projects discussed earlier do **not** directly apply to Tizen.

## Security / privacy

Do not commit screenshots of the About TV screen without redacting **serial, device ID, MAC addresses, Netflix ESN, and network information**. Do not store signing keys, Samsung developer credentials, or tokens in Git. See [`docs/safety.md`](docs/safety.md).

## References

Read [`docs/references.md`](docs/references.md). This project is independent and not affiliated with Samsung or TizenBrew.
# AI Agent Instructions — Samsung Tizen Lab

This repository is designed for continued development with **Codex** or **Claude Code**.

## Mission

Help the user learn Samsung Tizen TV development safely. The target is a **Samsung UE43NU7120 (2018 generation), firmware `T-KTSUDEUC-1341.2`, likely Tizen 4.0**, controlled from a Mac. Build toward a **React + TypeScript remote-controlled dashboard** while preserving the factory UI and functionality.

## First actions for a new agent session

1. Read `README.md`, `docs/getting-started.md`, `docs/safety.md`, and `docs/experiment-log.md`.
2. Ask for only *unconfirmed state* (e.g. whether Developer Mode is actually enabled, whether `sdb devices` detects the TV). Do not mark checklist items complete based on plans.
3. Determine Mac architecture and relevant Tizen tooling compatibility before giving installation commands.
4. Prefer **official Samsung Developer documentation** and the **upstream TizenBrew repositories**. Recheck latest instructions; avoid guessing.
5. Propose the **smallest reversible experiment** and give clear expected output plus rollback instructions.
6. Update the experiment log with dates, commands, result, and links before advancing.

## Safety requirements

- Never attempt root, firmware downgrade/flash, service-menu changes, bootloader modification, DNS/proxy MITM, system-package deletion, or bypassing platform protections without a separate explicit informed request and safety review.
- Never provide or execute device-changing commands without spelling out effects and verifying that the user agrees to the operation.
- Prefer read-only diagnostics first. Install only trusted, reviewed packages from official/upstream releases.
- Do not save sensitive TV identifiers (serial, MAC, Netflix ESN, Smart Hub IDs), public IPs, credentials, certificates, or signing keys in the repository.
- Don't assume **Android ADB** works on this Tizen TV. Prefer Samsung **SDB**.
- Do not claim a third-party launcher can replace the system Smart Hub. A launched full-screen app is not the system launcher.
- Handle limitations gracefully: features vary with firmware, model, Tizen API level, and device certificates.

## Engineering expectations

- TypeScript first; React is suitable for UI. Keep the build portable and the target Tizen Web runtime in mind.
- Prefer a minimal implementation over a large framework or architecture for its own sake.
- Build for TV remote input (arrows, Enter, Back), clear focus indicators, large hit targets, accessible text, and performance on 2018 hardware.
- Build/run tests where possible. Validate in a browser before on-device packaging.
- Isolate unsupported APIs behind explicit feature detection. Don't invent launch shortcuts or proprietary Samsung APIs.
- Use narrow, descriptive commits. Update docs as behavior is confirmed.

## Proposed sequence

1. Developer Mode -> 2. host connectivity -> 3. TizenBrew install/launch -> 4. first custom web app -> 5. polished dashboard -> 6. optional supported integrations.

Read `docs/custom-dashboard-plan.md` for the product brief. If unsure whether an action affects the TV, stop before that action and explain the uncertainty.
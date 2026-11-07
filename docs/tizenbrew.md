# TizenBrew experiment

[TizenBrew](https://github.com/reisxd/TizenBrew) is third-party/community software for Samsung Tizen TVs. It can provide an environment for mods and unofficial applications; it **does not replace the TV firmware or grant root access by itself**.

## Compatibility is a hypothesis, not a guarantee

TizenBrew documentation has described **Tizen 3.0+ (Samsung 2017+)** compatibility. This TV is a 2018 UE43NU7120, so it is worth trying, but the exact firmware `T-KTSUDEUC-1341.2`, macOS architecture, installer release, and API restrictions still matter.

## Trial procedure

1. Verify Developer Mode and local connectivity ([setup](getting-started.md)).
2. Read the current [TizenBrew docs](https://github.com/reisxd/TizenBrew) and [installer README](https://github.com/reisxd/TizenBrewInstaller).
3. Inspect [official installer releases](https://github.com/reisxd/TizenBrewInstaller/releases). Choose the asset matching the Mac's OS/architecture; don't run opaque scripts or disable macOS protections globally.
4. Follow the upstream supported installation workflow and note any certificates/signing prompts.
5. Verify the installed application is visible and launches on the TV.
6. Explore optional modules one by one; check upstream module source and changes before activating.

Installation is **not** confirmed or performed by this repository. If it fails, save sanitized errors in [experiment-log.md](experiment-log.md), verify requirements, and research model-specific behavior instead of attempting root/firmware hacks.

## Rollback

If the app is removable through standard Samsung Apps management, uninstall it there. Revert any individual module settings separately. Developer Mode can be disabled afterward. Do not assume deleting the app will undo every action taken by its modules.

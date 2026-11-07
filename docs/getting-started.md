# Hands-on setup: Samsung Tizen TV + Mac

**Status:** Not performed or verified. Proceed on a TV you own or have permission to change.

## 1. Capture baseline

Record model (`UE43NU7120`) and firmware (`T-KTSUDEUC-1341.2`). Record app shortcuts and current TV behavior. Keep unredacted device photos offline; avoid firmware or service-menu changes.

## 2. Check network

- Mac and TV must be on a network where they can reach each other; avoid isolated guest Wi-Fi.
- On Mac: **System Settings > Wi-Fi > Details > TCP/IP**; copy the **Mac local IPv4** address for the TV's Developer Mode dialog.
- Find the **TV local IP** from the TV's own network settings for subsequent connection.
- Keep IPs out of repository files.

## 3. Enable official Developer Mode

1. On TV open **Home > Apps** (the screen/menu can vary by firmware).
2. Enter **`12345`** using the remote or number keypad while in the Apps interface.
3. In the Developer Mode popup, switch to **On**.
4. Enter the **Mac IPv4 address** in **Host PC IP** (NOT the TV's address).
5. Confirm and restart the TV.
6. Return to Apps and look for a developer indicator.

Samsung's guide: https://developer.samsung.com/smarttv/develop/getting-started/using-sdk/tv-device.html

If the popup does not open, verify the Apps screen and controls; do not improvise Samsung service-menu sequences.

## 4. Optional SDB connection (after Mac tool installation)

Check current macOS and CPU support first, then install Samsung's supported **Tizen Studio** or related tooling:
https://developer.samsung.com/smarttv/develop/tools/tizen-studio.html

Using Device Manager, add a remote TV with the **TV IP**. If the Samsung Smart Development Bridge (`sdb`) is installed, test:

```sh
sdb connect YOUR_TV_LOCAL_IP
sdb devices
```

Replace the placeholder with your real TV address *locally*. `sdb connect` creates a development connection but should not modify the TV's system apps. `sdb devices` lists connected targets. This TV is **Tizen, not Android**; Android `adb` instructions are inapplicable.

## 5. TizenBrew

Only after confirming connectivity, review [TizenBrew setup](tizenbrew.md), its latest upstream installer instructions, and installation permissions. Explain what will change before installation.

## 6. Log results

Update [experiment-log.md](experiment-log.md) with dates, exact commands (redacting IPs), observed output, and rollback details. Tick tasks only when confirmed.

## Troubleshooting

- TV was rebooted after enabling Developer Mode
- Mac's IP entered into TV, but TV's IP used as target from Mac
- Both devices reachable, no client isolation
- Local firewall rules permit development connection
- Current Tizen tooling and signing prerequisites verified

Do not factory reset merely because initial connectivity fails.

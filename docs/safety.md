# Safety, privacy, reversibility

## First-stage experiments allowed

- Read TV settings and document non-sensitive model/firmware
- Toggle Samsung's official Developer Mode
- Check local network and development-tool connectivity
- Test read-only commands such as `sdb devices`
- Install a vetted, known Tizen app after reviewing impact
- Rearrange ordinary Smart Hub app shortcuts using built-in UI

## Higher-risk actions: out of current scope

- Root exploits, flashing or downgrading firmware, bootloader changes
- Service-menu modifications or calibration changes
- Deleting/altering protected system components and DRM
- Installing opaque third-party scripts or bypassing security protections
- Unknown developer shell commands that write to the TV

## Keep out of Git

Serial number, MAC addresses, Smart Hub IDs, Netflix ESN, TV account information, IP addresses, authentication material, Samsung developer credentials, signing keys and certificates, and unredacted About This TV screenshots. This GitHub repository was **public** when initialized; verify visibility before publishing personal notes.

## Before any device-changing step

Record what will change, how to observe success, how to undo it, and when to stop. If a rollback is not understood, research first. Factory reset is **not** a general-purpose rollback.

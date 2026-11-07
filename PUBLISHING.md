# GitHub and agent workflow

The repository already exists at **https://github.com/thekeyvan/samsung-tizen-lab**. Do **not** create it again.

**Visibility:** Public at the time it was checked on 2026-11-07. Review privacy and change to Private in GitHub Settings if preferred. Never commit device serials, MAC addresses, Smart Hub IDs, screenshots containing those IDs, network addresses, credentials, or signing keys.

## Clone

```bash
git clone https://github.com/thekeyvan/samsung-tizen-lab.git
cd samsung-tizen-lab
```

## Continue with Codex or Claude Code

- Codex: open the repository; read `AGENTS.md`, `README.md`, and `docs/experiment-log.md`.
- Claude Code: open the repository; `CLAUDE.md` points to `AGENTS.md`.
- Start from the **first unchecked milestone**. No on-TV action has been verified yet.

Suggested initial instruction:

> Read AGENTS.md, README.md, docs/getting-started.md, and docs/experiment-log.md. Guide me through Developer Mode, then a read-only SDB connectivity test on my Samsung UE43NU7120. Confirm each real result before marking steps completed. Explain any device-changing command and its rollback first.

Commit real observations to the experiment log. Keep implementation in a future `apps/tv-dashboard/` directory.

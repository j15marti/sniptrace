# SnipTrace

**Trim noisy terminal output before it reaches your AI agent.**

SnipTrace is a free, local command-line tool. Prefix any noisy command with
`sniptrace` and it runs the command normally, then strips the boilerplate
(Docker layer lines, npm/pnpm deprecation warnings, pytest/jest scaffolding,
progress spinners, update banners, …) before printing the result. Less noise
means fewer wasted tokens and cleaner context for AI coding agents.

Everything runs on your machine. No output ever leaves your computer unless you
explicitly opt in to anonymous telemetry.

```
$ sniptrace npm run test
# → only the meaningful lines, the noise removed
```

## Install

### npm

```sh
npm install -g @sniptrace/cli
```

### Homebrew

Install directly from the formula:

```sh
brew install --formula https://raw.githubusercontent.com/j15marti/sniptrace/main/Formula/sniptrace.rb
```

Or, once the `j15marti/homebrew-sniptrace` tap repository exists:

```sh
brew tap j15marti/sniptrace
brew install sniptrace
```

### curl (no package manager)

```sh
curl -fsSL https://sniptrace.com/install.sh | sh
```

> **Requirements:** `bash` and `python3` (used for the output filter). If
> `python3` is unavailable, SnipTrace passes output through unchanged.

## Usage

```sh
sniptrace <command> [args...]      # run a command and trim its output
sniptrace --json <command>         # structured JSON output for agents
```

Examples:

```sh
sniptrace pytest tests/
sniptrace docker build .
sniptrace pnpm install
sniptrace --json pytest tests/
```

### Turn filtering on & off

Filtering is **on by default**. You can pause and resume it any time — no need
to undo your setup.

```sh
sniptrace off       # pause filtering (commands run untouched)
sniptrace on        # resume filtering
sniptrace status    # show whether filtering is on or off
```

To disable filtering from code or CI without changing your saved setting, export
an environment variable:

```sh
export SNIPTRACE_DISABLED=1
```

### Set up agents & shells

```sh
sniptrace init         # write a mandatory AGENTS.md rule so AI agents prefix commands automatically
sniptrace shell-init   # wrap noisy shell commands so they filter automatically (humans, run once)
```

### Telemetry (opt-in, off by default)

```sh
sniptrace tele --on        # opt in to anonymous telemetry (optional email + report frequency)
sniptrace tele --off       # opt back out
sniptrace tele --status    # show current settings
```

## License

[MIT](LICENSE) © Jeremy Martinez

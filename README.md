# Apex FlightDeck

A simple kOS script for Kerbal Space Program that prints live flight stats
straight to the in-game terminal — no plugins, no dependencies, just kerboscript.
We also have a Discord Server for more stuff and even some sneak peeks ete, if you wished to join the kink is here [Apex FlightDeck](https://discord.gg/9KJWW3JS6n)

## Features

* **Live altitude readout** — current altitude updated continuously as you fly.
* **Surface speed & vertical speed** — see how fast you're going and how fast
you're climbing or descending at a glance.
* **Apoapsis / periapsis tracking** — keep an eye on your orbit shape without
switching to the map view.
* **Fuel readout** — remaining liquid fuel shown directly on the terminal.
* **Throttle display** — shows current throttle input in real time.
* **Mission time** — tracks elapsed time since the script started running.
* Lightweight — runs entirely in kOS with no external tools or plugins required.

## Requirements

* [kOS: Kerbal Space Program](https://forum.kerbalspaceprogram.com/topic/61827-*) — the scripting mod this project is built on.
* [kRPC](https://krpc.github.io/krpc/) — used for extended telemetry features.

## Installation

1. Download the latest release.
2. Copy the script into:

```
Ships/
└── Script/
    ├── ApexFlightDeck.ks
    └── boot/
        └── ApexFlightDeck.ks   (if you want it to run automatically on boot)
```

3. Launch KSP, load it onto your vessel's kOS CPU part (can also be your capsule etc), and run it from the terminal. Or put the file into the boot folder.

## Status / Known issues

This script is in early development (Beta 1). Expect some rough edges — not
everything is fully polished yet, and some readouts may need further tuning
as testing continues.

## Planned / Roadmap

* **Beta 1** — Core stats readout: altitude, speed, vertical speed, apoapsis/periapsis, fuel, throttle, mission time.
* **Beta 2** — More stats displayed, plus cleaner terminal formatting and layout.
* **Beta 3** — Planned HTML export/output for the dashboard, viewable outside the KSP terminal.
* **Beta 4** — Continued work on the HTML output, with more customization options for what gets shown.
* **Beta 5** — Final beta before full release, general polish, bug fixes, and last round of changes.

## Credits

Special thanks to [Delta](https://github.com/deltaspacesystems-ksp) for helping
out with this project.

---

*Still early — more stats, more polish, more to come.*
*Owner: astra.spac2.*
.

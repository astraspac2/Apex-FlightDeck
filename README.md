# Apex FlightDeck

A simple kOS script for Kerbal Space Program that prints live flight stats
straight to the in-game terminal — no plugins, no dependencies, just kerboscript.
We also have a Discord Server for more stuff and even some sneak peeks etc, if you wished to join the link is here [Apex FlightDeck](https://discord.gg/JFYSJ2JujR)

## Features

* **Live altitude readout** — current altitude updated continuously as you fly.
* **Surface speed & vertical speed** — see how fast you're going and how fast
you're climbing or descending at a glance.
* **Apoapsis / periapsis tracking** — keep an eye on your orbit shape without
switching to the map view.
* **Fuel readout** — remaining liquid fuel shown directly on the terminal.
* **Throttle display** — shows current throttle input in real time.
* **Delta-V (vacuum & ASL), orbit period, heading & pitch** — extra stats for
more detailed flight monitoring.
* **Mission time** — tracks elapsed time since the script started running.
* **Menu-driven interface** — navigate between Stats, About, Settings, and
Attitude pages with simple keyboard controls.
* **Attitude display** — a visual readout of your rocket's current orientation.
* **Settings page** — adjust refresh rate, toggle HTML export, and set
auto-return timing.
* **HTML export** — flight stats can be exported to an HTML file, viewable
outside the KSP terminal.
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

## Status

Apex FlightDeck is under active development. Stats, menus, settings, an
attitude display, and HTML export are all in place, with more features and
polish planned for future updates.

## Credits

Special thanks to [Delta](https://github.com/deltaspacesystems-ksp) for helping
out with this project.

---

*Still early — more stats, more polish, more to come.*
*Owner: astra.spac2.*

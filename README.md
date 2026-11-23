# NuExt.All

Meta-repository for local development of all NuExt modules.

## Modules

| Module | Purpose | Direct NuExt dependencies |
|---|---|---|
| `NuExt.System` | Foundational .NET utilities | None |
| `NuExt.System.Data` | Lightweight data-access utilities and abstractions | `NuExt.System` |
| `NuExt.System.Data.SQLite` | SQLite integration and database context infrastructure | `NuExt.System.Data` |
| `NuExt.Minimal.Mvvm` | Framework-neutral MVVM core | None |
| `NuExt.Minimal.Mvvm.SourceGenerator` | Compile-time generation for MVVM properties, commands, validation, and localization | None |
| `NuExt.Minimal.Mvvm.Desktop` | Platform-agnostic desktop MVVM base layer: model lifecycle, change tracking, and settings | `NuExt.System`, `NuExt.Minimal.Mvvm` |
| `NuExt.Minimal.Mvvm.Desktop.Persistence` | SQLite persistence for desktop MVVM: key/value settings DAL, application version storage, settings migration, and a database initializer | `NuExt.Minimal.Mvvm.Desktop`, `NuExt.System.Data.SQLite` |
| `NuExt.Minimal.Behaviors.Wpf` | Reusable WPF behaviors and command interactivity | None |
| `NuExt.Presentation.Wpf` | WPF presentation helpers and utilities | None |
| `NuExt.Minimal.Mvvm.Wpf` | WPF MVVM application infrastructure | `NuExt.Minimal.Mvvm.Desktop`, `NuExt.Minimal.Behaviors.Wpf`, `NuExt.Presentation.Wpf` |
| `NuExt.Minimal.Mvvm.AvalonDock` | AvalonDock integration: dockable documents, tool windows, and docking management services | `NuExt.Minimal.Mvvm.Wpf` |
| `NuExt.Minimal.Mvvm.MahApps.Metro` | MahApps.Metro integration | `NuExt.Minimal.Mvvm.Wpf` |
| `NuExt.Tools` | Repository tooling (project merger) | None |

## Module dependencies

```text
NuExt.System
└─ NuExt.System.Data
   └─ NuExt.System.Data.SQLite


NuExt.Minimal.Mvvm ───────────────┐
NuExt.System ─────────────────────┴─ NuExt.Minimal.Mvvm.Desktop
                                              │
NuExt.System.Data.SQLite ─────────────────────┴─ NuExt.Minimal.Mvvm.Desktop.Persistence


NuExt.Minimal.Mvvm.Desktop ───────┐
NuExt.Minimal.Behaviors.Wpf ──────┼─ NuExt.Minimal.Mvvm.Wpf
NuExt.Presentation.Wpf ───────────┘              │
                                                 ├─ NuExt.Minimal.Mvvm.AvalonDock
                                                 └─ NuExt.Minimal.Mvvm.MahApps.Metro
```

`NuExt.Minimal.Mvvm.SourceGenerator` is an independent compile-time package with no NuExt package dependencies; the MVVM modules consume it as an analyzer only.

The WPF integrations additionally pull their third-party UI package: `MahApps.Metro` for `NuExt.Minimal.Mvvm.MahApps.Metro` and `Dirkster.AvalonDock` for `NuExt.Minimal.Mvvm.AvalonDock`.

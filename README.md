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
| `NuExt.Minimal.Behaviors.Wpf` | Reusable WPF behaviors and command interactivity | None |
| `NuExt.Presentation.Wpf` | WPF presentation helpers and utilities | None |
| `NuExt.Minimal.Mvvm.Wpf` | WPF MVVM application infrastructure | `NuExt.System`, `NuExt.Minimal.Mvvm`, `NuExt.Minimal.Behaviors.Wpf`, `NuExt.Presentation.Wpf` |
| `NuExt.Minimal.Mvvm.MahApps.Metro` | MahApps.Metro integration | `NuExt.Minimal.Mvvm.Wpf` |

## Module dependencies

```text
NuExt.System
└─ NuExt.System.Data
   └─ NuExt.System.Data.SQLite


NuExt.System ─────────────────────┐
NuExt.Minimal.Mvvm ───────────────┤
NuExt.Minimal.Behaviors.Wpf ──────┼─ NuExt.Minimal.Mvvm.Wpf
NuExt.Presentation.Wpf ───────────┘              │
                                                 └─ NuExt.Minimal.Mvvm.MahApps.Metro
```

`NuExt.Minimal.Mvvm.SourceGenerator` is an independent compile-time package with no NuExt package dependencies.
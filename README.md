# NuExt.All

Meta-repository for local development of all NuExt modules.

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


NuExt.Minimal.Mvvm.SourceGenerator
└─ Independent compile-time package


NuExt.Tools
└─ NuExt.Tools.ProjectMerger
   └─ Independent .NET tool
```
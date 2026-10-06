# Ritmo · Orologio per Windows

Ritmo è un'app desktop Windows con orologio locale e mondiale, timer a ripetizione programmabile, sveglia, conto alla rovescia, cronometro e widget desktop.

## Funzioni

- Ora locale con secondi e data.
- Timer a ripetizione con intervallo modificabile, avvio immediato o programmato, pausa, ripresa e reset.
- Sveglia singola o giornaliera.
- Timer con conto alla rovescia e cronometro con giri.
- Orologi per Roma, Londra, New York, Tokyo e Sydney usando gli identificativi Windows dei fusi orari.
- Widget desktop configurabili, con opzione per mantenerli in primo piano.
- Riduzione nell'area di notifica per continuare a funzionare in background.

## Requisiti

- Windows 10 o successivo.
- .NET Framework 4.x e compilatore C# `csc.exe` (Developer Pack).

## Compilazione

Apri PowerShell nella cartella del progetto ed esegui:

```powershell
.\build.ps1
```

Lo script crea `Ritmo.exe` accanto al sorgente. Per avviarlo:

```powershell
.\AvviaRitmo.ps1
```

Al primo avvio l'app salva impostazioni e stato nella propria cartella. I file personali di stato e il link Apple Music sono esclusi dal repository.

## Note

Il progetto usa Windows Forms e non richiede pacchetti NuGet. I widget e i timer continuano a funzionare mentre la finestra è nascosta nell'area di notifica; per continuare dopo il riavvio di Windows, configura Ritmo nell'avvio automatico.

---

# Ritmo · Windows Clock

Ritmo is a Windows desktop app featuring local and world clocks, a schedulable repeating timer, alarms, countdown timers, a stopwatch, and desktop widgets.

## Features

- Local time with seconds and date.
- Repeating timer with a configurable interval, immediate or scheduled start, pause, resume, and reset.
- One-time or daily alarm.
- Countdown timer and lap stopwatch.
- Clocks for Rome, London, New York, Tokyo, and Sydney using Windows time-zone identifiers.
- Configurable desktop widgets, with an option to keep them on top.
- Minimize to the system tray and keep running in the background.

## Requirements

- Windows 10 or later.
- .NET Framework 4.x and the C# compiler `csc.exe` (Developer Pack).

## Build

Open PowerShell in the project folder and run:

```powershell
.\build.ps1
```

The script creates `Ritmo.exe` next to the source file. To launch it, run:

```powershell
.\AvviaRitmo.ps1
```

On first launch, the app stores its settings and state in its own folder. Local state files and the Apple Music link are excluded from the repository.

## Notes

The project uses Windows Forms and requires no NuGet packages. Widgets and timers keep running while the main window is hidden in the system tray. To keep Ritmo available after restarting Windows, add it to Windows startup.


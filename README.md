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

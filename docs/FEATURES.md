# Feature-Spezifikationen (Stempeluhr)

Zentrale Übersicht aller Feature-Specs. Jedes Feature wird nach der Vorlage
[`docs/templates/feature_spec_template.md`](templates/feature_spec_template.md)
in einer eigenen Datei unter [`specs/`](specs/) spezifiziert (Spec-driven Development).

## Feature-Index

| ID | Feature | Priorität | Status | Spec |
|----|---------|-----------|--------|------|
| FEAT-001 | Ein-/Ausstempeln & Zeitmessung | High | Draft | [specs/feat-001-check-in-out.md](specs/feat-001-check-in-out.md) |
| FEAT-002 | Uhr (Hauptanzeige) | High | ⬜ Nicht spezifiziert | – |
| FEAT-003 | Tagesbericht exportieren | Medium | ⬜ Nicht spezifiziert | – |
| FEAT-004 | Countdown verbleibende Tagesarbeitszeit | Medium | ⬜ Nicht spezifiziert | – |
| FEAT-005 | Voraussichtliches Arbeitsende anzeigen | Medium | ⬜ Nicht spezifiziert | – |
| FEAT-006 | Gleitzeit speichern | Medium | ⬜ Nicht spezifiziert | – |
| FEAT-007 | Früheres Freitagsende vorschlagen (Gleitzeit abbauen) | Low | ⬜ Nicht spezifiziert | – |

## Status-Legende

| Status | Bedeutung |
|--------|-----------|
| ⬜ Nicht spezifiziert | Noch keine Spec angelegt |
| Draft | Spec in Arbeit |
| In Review | Spec wird geprüft |
| Approved | Spec freigegeben, Implementierung kann starten |
| Implemented | Feature implementiert |
| Tested | Feature getestet, alle Testfälle grün |

## Workflow

1. **Spezifikation:** Neue Spec-Datei aus der Vorlage anlegen (`specs/feat-XXX-<slug>.md`), Status `Draft`.
2. **Review:** Spec prüfen lassen, Status `In Review` → `Approved`.
3. **Implementierung:** Feature gemäß Spec umsetzen, Testfälle aus der Spec ableiten.
4. **Abnahme:** Akzeptanzkriterien prüfen, Status `Tested`.

# GIZMO Ground-Reference Monitoring Operations Guide

This directory contains publication-safe LaTeX sources and generated PDFs for:

> **GIZMO Ground-Reference Monitoring Operations Guide**<br>
> *Connection, commissioning, and monitoring during construction and operation*<br>
> DUNE Far Detector<br>
> Manuel Arroyave<br>
> Prepared from the available DUNE DocDB, ORC, and legacy operating record

| Version | PDF | LaTeX source |
| --- | --- | --- |
| Full guide | [Read](GIZMO_Ground_Reference_Impedance_Monitoring_Long.pdf) | [Source](GIZMO_Ground_Reference_Impedance_Monitoring_Long.tex) |
| Two-page operations reference | [Read](GIZMO_Ground_Reference_Impedance_Monitoring.pdf) | [Source](GIZMO_Ground_Reference_Impedance_Monitoring.tex) |
| One-page quick guide | [Read](GIZMO_Ground_Reference_Impedance_Monitoring_Concise.pdf) | [Source](GIZMO_Ground_Reference_Impedance_Monitoring_Concise.tex) |

The quick guide also has a [printable HTML version](GIZMO_Ground_Reference_Impedance_Monitoring_Concise.html).

The full guide was recovered from commit `b7dd76c` (the last full-length
revision before the September 30 condensation) and updated on October 5, 2026.
It retains the detailed connection, commissioning, welding, alarm, shutdown,
and recording procedures, with terms defined first and instrument/controls
details in appendices. Contractor coordination now covers shift bond
checks, agreed FNAL test windows, authorized switching, local fallback,
electrical verification, and acknowledged handback before work resumes.
The original unmodified revision remains in Git history.

All three guides explain why the structure must stay grounded, why GIZMO tests
must recur during construction, and who acts on failed checks or missing data.
They distinguish verification of the safety bond from GIZMO isolation and
coupling measurements. Site test methods, limits, intervals, fallback, and
handback authority must be assigned in the work plan before field use.

This is an integration and commissioning draft, not an approved electrical
work procedure. Released grounding drawings, ORC, LOTO, hazard analysis,
approved work controls, calibration, site configuration, and responsible
sign-off take precedence.

The guides are Kria-focused. The generated GIZMO OPC UA schema is the machine
contract, and the companion GIZMO--SC/DPS ICD explains it for human review. The
full guide retains the recorded ZedBoard-spare status as a reference; it must
be checked against the current acceptance record before use. A spare is not
an accepted monitoring substitute until its calibration, authoritative alarm,
security, and interface-acceptance gates pass.

Build with:

```sh
make
```

The source references controlled DUNE documents but does not redistribute
them. It contains no production endpoint, credential, target image, live
database, private commissioning record, or controlled site configuration.

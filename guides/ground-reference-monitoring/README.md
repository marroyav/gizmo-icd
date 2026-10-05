# GIZMO Ground-Reference Monitoring Operations Guide

This directory contains the publication-safe source and generated PDF for:

> **GIZMO Ground-Reference Monitoring Operations Guide**<br>
> *Connection, commissioning, and monitoring during construction and operation*<br>
> DUNE Far Detector<br>
> Manuel Arroyave<br>
> Prepared from the available DUNE DocDB, ORC, and legacy operating record

[Open the public-review guide](GIZMO_Ground_Reference_Impedance_Monitoring.pdf).

[Open the quick guide](GIZMO_Ground_Reference_Impedance_Monitoring_Concise.pdf)
or its [printable HTML version](GIZMO_Ground_Reference_Impedance_Monitoring_Concise.html).

Both guides explain why the structure must stay grounded, why GIZMO tests
must recur during construction, and who acts on failed checks or missing data.
They distinguish verification of the safety bond from GIZMO isolation and
coupling measurements. Site test methods, limits, intervals, fallback, and
handback authority must be assigned in the work plan before field use.

This is an integration and commissioning draft, not an approved electrical
work procedure. Released grounding drawings, ORC, LOTO, hazard analysis,
approved work controls, calibration, site configuration, and responsible
sign-off take precedence.

The guide is Kria-focused. The generated GIZMO OPC UA schema is the machine
contract, and the companion GIZMO--SC/DPS ICD explains it for human review. The
preserved ZedBoard is the spare implementation, but it is not an accepted
monitoring substitute until its calibration, authoritative alarm, security,
and interface-acceptance gates pass.

Build with:

```sh
make
```

The source references controlled DUNE documents but does not redistribute
them. It contains no production endpoint, credential, target image, live
database, private commissioning record, or controlled site configuration.

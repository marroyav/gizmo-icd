# GIZMO Ground-Reference Impedance Monitoring

This directory contains the publication-safe source and generated PDF for:

> **GIZMO Ground-Reference Impedance Monitoring**<br>
> *A human-facing connection, power-up, and construction-monitoring guide*<br>
> DUNE Far Detector<br>
> Manuel Arroyave<br>
> Prepared from the available DUNE DocDB, ORC, and legacy operating record

[Open the public-review guide](GIZMO_Ground_Reference_Impedance_Monitoring.pdf).

This is an integration and commissioning draft, not an approved electrical
work procedure. Released grounding drawings, ORC, LOTO, hazard analysis,
approved work controls, calibration, site configuration, and responsible
sign-off take precedence.

The companion ICD defines one hardware-neutral `urn:fnal:gizmo` OPC UA
contract to which any GIZMo hardware implementation must conform. The Kria
server is the current reference implementation; the ZedBoard server is under
development and is not commissioned.

Build with:

```sh
make
```

The source references controlled DUNE documents but does not redistribute
them. It contains no production endpoint, credential, target image, live
database, private commissioning record, or controlled site configuration.

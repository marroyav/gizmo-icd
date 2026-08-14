# GIZMo contract remote-consistency review

Initial review date: 2026-08-13

Final reconciliation: 2026-08-14

This review establishes the evidence used for ICD revision `0.10-public`. It
does not commission a device, an Ignition connection, or a production control
path.

## Contract authority

The maintained GIZMo Kria implementation and its generated
`schema/gizmo-opcua-contract.json` artifact define the authoritative
`urn:fnal:gizmo` contract. The ICD is the human-facing requirements and
change-control companion. A ZedBoard producer and every SC consumer conform to
the generated contract without overriding its NodeIds, datatypes, units,
engineering metadata, access metadata, methods, or meanings.

Current released baseline:

- namespace URI: `urn:fnal:gizmo`;
- model version: `1.3.1`;
- publication date: `2026-08-14`;
- canonical threshold metadata: OPC UA `UInt32`, 0 through 1,000,000 ohm;
- ZedBoard accepted threshold subset: 0 through 1023 ohm, returning
  `BadOutOfRange` above 1023;
- stable baseline inventory: 43 objects, 457 variables, and 5 methods;
- embedded canonical contract digest:
  `25d758ecb65db09a03f5acbbf39db714caa711efbac4d4b286c3ff63b2459201`; and
- byte-level JSON SHA-256:
  `1a09ec04deb03355a1603e7c2c1279511e520906386981aab064cd9a629afe5a`.

`HIGH Z` is a valid good-quality state: `ResistanceRange=OutOfRange`,
`ResistanceOhm=NaN` (JSON `null`), and OPC UA status `Good`. It is never
represented as a fabricated 500- or 999-ohm measurement.

## Starting remote heads reviewed

The reconciliation began from these published heads. Later commits in the
same delivery merge and supersede their overlapping contract statements.

| Repository | Starting `main` commit | Contract relevance |
|---|---|---|
| `marroyav/GIZMo` | `f9683ccef282dbc0a4970869c7d6f3cd19cfc961` | Kria runtime and generated model |
| `marroyav/gizmo-icd` | `ea17242e876ec0ee0d9857ffad83a9558a272fd4` | Earlier public ICD baseline |
| `marroyav/gizmo-zedboard-legacy` | `06b0ed7e35685c47298fa6084d333df0463c38ed` | Recovered ZedBoard behavior |
| `marroyav/gizmo-ignition` | `501ddd91967c20a0ff1f798cf7848056951e53ef` | Dual-device SC consumer |
| `marroyav/gizmo-data-archive` | `2c6d56ad670c2487853b01532eb5086185dc45d4` | Historian archive boundary |
| `marroyav/sc_interface` | `09cb6c5b1b640b2152056123a7c642a1e5e0bf1c` | Secondary public ICD snapshot |

## Reconciled results

- The Kria intake contains 87 unique selected NodeIds; the ZedBoard intake
  contains 77. They share 76 NodeIds. Platform-specific rows are explicit and
  do not create competing meanings in the shared namespace.
- Rows labelled as future-model proposals remain review requests and are not
  advertised as model 1.3.1.
- The GIZMo, ZedBoard, and Ignition repositories carry byte-identical schema
  snapshots and pin the same canonical digest.
- Ignition uses two independent connections with distinct producer identities.
  Neither producer is a proxy, fallback, lifecycle owner, or cross-control path
  for the other.
- The ZedBoard server remains under development. Its target-side 100-ohm
  threshold transaction is development evidence, not production acceptance.
  It does not compete with `GIZMO.elf` for general FPGA/MMIO, relay, stimulus,
  display, or process ownership.
- The conforming ZedBoard profile retains canonical 0..1,000,000-ohm metadata
  while accepting only 0..1023 ohm locally. All other variables are read-only
  and all methods return `BadNotSupported`.
- Archive manifests record the contract authority and producer identity so
  Kria and ZedBoard data cannot be silently conflated.
- Site endpoints, credentials, private keys, connection resources, database
  resources, device images, and private commissioning artifacts are excluded
  from the public repositories.

## Delivery scope

The reconciled public delivery updates the Kria runtime/contract, ZedBoard
conformance profile, dual-device Ignition project, archive manifest schema,
ICD/workbooks/guide, and the public `sc_interface` snapshot. The unsafe private
legacy development working copy is intentionally not published.

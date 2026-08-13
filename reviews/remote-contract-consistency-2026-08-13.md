# GIZMo contract remote-consistency review

Review date: 2026-08-13

This review was read-only outside `gizmo-icd`. It establishes the evidence used
for ICD revision `0.10-public`; it does not commission a device or an Ignition
connection.

## Contract authority

The GIZMo–Slow Controls ICD defines the hardware-neutral
`urn:fnal:gizmo` contract. Any GIZMo hardware implementation and every SC
consumer must conform to that contract. A runtime-generated address-space
inventory is implementation evidence and a conformance fixture; it does not
transfer change authority from the jointly reviewed ICD to one hardware
implementation.

Current released baseline:

- namespace URI: `urn:fnal:gizmo`;
- model version: `1.3.1`;
- publication date: `2026-08-13`;
- threshold contract: OPC UA `UInt32`, 0 through 1023 ohm;
- stable baseline inventory: 43 objects, 457 variables, and 5 methods; and
- reviewed implementation-schema hash:
  `1f10f15a8991a758d7b0c59ef220002336a9615e3378401a6456668e86b51b97`.

## Remote heads reviewed

No remote `dev` or `develop` branch existed in the reviewed repository set.
Each remote exposed only `main`, so the comparison used these exact heads:

| Repository | Reviewed `main` commit | Contract relevance |
|---|---|---|
| `marroyav/GIZMo` | `f9683ccef282dbc0a4970869c7d6f3cd19cfc961` | Kria model 1.3.1 reference implementation and generated address-space inventory |
| `marroyav/gizmo-icd` | `ea17242e876ec0ee0d9857ffad83a9558a272fd4` | Published ICD baseline before this delivery |
| `marroyav/gizmo-zedboard-legacy` | `06b0ed7e35685c47298fa6084d333df0463c38ed` | Recovered ZedBoard display/firmware and hardware behavior |
| `marroyav/gizmo-ignition` | `501ddd91967c20a0ff1f798cf7848056951e53ef` | SC consumer generated from model 1.3.1 |
| `marroyav/gizmo-data-archive` | `2c6d56ad670c2487853b01532eb5086185dc45d4` | Historian archive boundary; no competing OPC UA model |
| `marroyav/sc_interface` | `09cb6c5b1b640b2152056123a7c642a1e5e0bf1c` | Explicitly secondary revision-0.8 snapshot, not the maintained GIZMo contract |

## Results

- Both DCS intake workbooks contain the same 87 selected canonical NodeIds,
  with no duplicates or platform-private NodeId in the shared namespace.
- The 69 rows assigned to the current model match the model-1.3.1 inventory for
  datatype, engineering unit, engineering range where defined, and access that
  is no more permissive than the contract.
- The remaining 18 rows are explicitly labelled model-1.4 proposals and are
  not advertised as model 1.3.1.
- The Kria and Ignition remote heads agree on namespace, model version,
  generated inventory hash, and the 0--1023-ohm threshold contract.
- The ZedBoard remote head contains no target-native OPC UA server. Therefore
  the ICD records that server as under development, keeps its initial SC
  profile monitoring-only, and does not accept deployment or authenticated
  write claims as commissioning evidence.
- The two hardware instances retain distinct endpoint, application, device,
  certificate, and history identities. A ZedBoard producer must not proxy or
  change the Kria, and must not contend with the preserved ZedBoard controller
  for FPGA/MMIO, display, relay, stimulus, or process ownership.
- The Ignition resources may be prepared for the canonical address space, but
  the legacy connection, history, alarms, and controls remain disabled until
  the ICD's conformance, identity, non-interference, security, and physical
  acceptance gates pass.

## Scope note

Only `gizmo-icd` is changed by this delivery. The other repositories above were
queried or cloned into temporary storage for comparison only; none was edited,
committed, or pushed.

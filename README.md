# B2B-Sales-Operations-RevOps-Portfolio


# End-to-End B2B Sales Pipeline Analytics & Revenue Optimization Engine

![Power BI](https://img.shields.io/badge/Power_BI-Desktop_%26_Service-F2C811?logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/Calculations-38_DAX_Measures-005FB8)
![Data Modeling](https://img.shields.io/badge/Architecture-6--Table_Star_Schema-green)
![Domain](https://img.shields.io/badge/Industry-B2B_Telecommunications-orange)

An end-to-end Sales Operations (RevOps) and Business Intelligence project transforming a flat 3,200-row enterprise sales flat-file into an actionable, normalized 6-table Star Schema. Engineered in Power BI with 38 custom DAX measures, dynamic stage-gate duration tracking, and full pipeline conversion diagnostics.

---

## Executive Summary & Key Results

A mid-market B2B telecommunications provider experienced pipeline opacity, delayed proposal cycles, and decentralized tracking across lead-to-contract stages. This project established a unified BI infrastructure to monitor revenue health, stage conversion velocity, and margin leakages.

### Headline Performance Metrics
* **Total Leads Analyzed:** 3,200 inbound & outbound enterprise inquiries
* **Total Contract Value (TCV) Closed:** €173.54M across 1,403 won deals
* **Average Deal Size:** €123.69K per signed contract
* **Active Open Pipeline:** €57.38M currently in proposal/negotiation
* **Lead-to-Contract Conversion Rate:** 43.8% (Benchmark: 40–45%)
* **Median End-to-End Cycle Time:** 43.0 Days (Average: 42.6 Days)

---

## Business Problem & Strategic Objectives

Prior to this implementation, the sales and executive teams lacked visibility into:
1. **Funnel Friction Points:** Pinpointing exactly where qualified prospects were dropping out between initial inquiry and contract execution.
2. **Cycle Time Inefficiencies:** Measuring the exact latency between lead intake, proposal generation, and external client signatures.
3. **Channel & Industry Profitability:** Quantifying customer acquisition channel performance and regional concentration beyond gross lead volume.

---

## Data Architecture & Dimensional Modeling

A raw operational flat-file (`3,200 rows × 24 columns`) was transformed into an optimized **6-Table Star Schema** in Power Query (M), decoupling transactional entities from descriptive dimensions.

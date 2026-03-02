## [0.1.2] - 2026-02

### Added
- Included confidence interval calculations for the `InflationOptimalABSME2026` measure, accessible via `InflationOptimalABSME2026_ci`.

## [0.1.1] - 2026-02

### Changed
-  Changed the recipe for the `InflationOptimalABSME2026`. In particular, the linear combination for the 2023-2024 CPI bases included estimators with high volatility, which were emulating the total weighted mean across all items. This behavior derivated from the low bias of the CPI inflation estimator when calibrating the estimators from Dec-2024 to Oct-2025.

## [0.1.0] - 2025-11

### Added
-  Basic functionality exporting all optimal measures. 
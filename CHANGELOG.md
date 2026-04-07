## [0.1.3] - 2026-04

### Added
- Implemented the `InflationOptimalRMSE2026B` (note the "B") inflation function. This combination is developed using a complexity-based penalty for each kind of measure to assign more weight to the more "robust" (simpler) measures included in the combination. The unweighted trimmed mean results with the highest weight, thus reducing the volatility of the final combination.

## [0.1.2] - 2026-02

### Added
- Included confidence interval calculations for the `InflationOptimalABSME2026` measure, accessible via `InflationOptimalABSME2026_ci`.

## [0.1.1] - 2026-02

### Changed
-  Changed the recipe for the `InflationOptimalABSME2026`. In particular, the linear combination for the 2023-2024 CPI bases included estimators with high volatility, which were emulating the total weighted mean across all items. This behavior derivated from the low bias of the CPI inflation estimator when calibrating the estimators from Dec-2024 to Oct-2025.

## [0.1.0] - 2025-11

### Added
-  Basic functionality exporting all optimal measures. 
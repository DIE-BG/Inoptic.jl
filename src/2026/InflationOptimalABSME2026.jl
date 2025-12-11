ENSEMBLE_ABSME_00 = [
    InflationDynamicExclusion(0.25, 1.19), #0.024652723
    InflationGSEq(0.74402666, 0.5313201, 0.22810677, 1.3737837), # 0.012754491
    InflationPercentileEq(72), #  0.0535375 <---- Valor del ABSME
    InflationTrimmedMeanEq(60.0, 82.0), # 0.0436706
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162],
        [29, 39, 46, 197, 30, 31, 274, 116, 40],
        [71], [70],
    ), #0.0534853
    InflationCoreMaiG(GTDATA00, [0.34, 0.66]), #0.001503
    InflationCoreMaiF(GTDATA00, [0.0, 0.41, 0.48, 0.62, 0.67, 0.7, 0.74]), #0.053777
    InflationCoreMaiFG(GTDATA00, [0.32, 0.48, 0.67]), #0.003444
    InflationGSWeighted(0.5336547, 0.3387813, 0.44229975, 0.7571993), # 0.025765043
    InflationPercentileWeighted(69), # 0.0482284
    InflationTrimmedMeanWeighted(36.0, 91.0), # 0.0458078
]

W_ABSME_00 = [
    0.08141521, #Dynamic Exclusion (0.25, 1.19)
    0.1410166, #Unweighted Gausssian Smoothing (0.74, 0.53, 0.23, 1.3737837)
    0.034011275, #Unweighted Percentile 72.0
    0.02543246, #Unweighted Trimmed Mean (60.0, 82.0)
    0.113872394, #Fixed Exclusion (month-on-month) (9,)
    0.010106368, #Core MAI-G (0.34,0.66)
    0.031949777, #Core MAI-F (0.0,0.41,0.48,0.62,0.67,0.7,0.74)
    0.00853203, #Core MAI-FG (0.32,0.48,0.67)
    0.481818, #Weighted Gausssian Smoothing (0.53, 0.34, 0.44, 0.7571993)
    0.0350803, #Weighted Percentile 69.0
    0.036765594, #Weighted Trimmed Mean (36.0, 91.0)
]


OPT_ABSME_00 = CombinationFunction(ENSEMBLE_ABSME_00..., W_ABSME_00)

ENSEMBLE_ABSME_10 = [
    InflationDynamicExclusion(0.26, 1.19), #0.018230643
    InflationGSEq(0.7424022, 0.7623169, 0.26951963, 1.853549), # 0.038855266
    InflationPercentileEq(71), # 0.0674823 <---- Valor del ABSME
    InflationTrimmedMeanEq(36.0, 92.0), # 0.055778
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162],
        [29, 39, 46, 197, 30, 31, 274, 116, 40],
        [71], [70],
    ), #0.0726302
    InflationCoreMaiG(GTDATA, [0.01, 0.39, 0.63, 0.75, 0.88]), #0.045249
    InflationCoreMaiF(GTDATA, [0.12, 0.41, 0.7, 0.98]), #0.022826
    InflationCoreMaiFG(GTDATA, [0.11, 0.22, 0.32, 0.41, 0.52, 0.61, 0.72, 0.8, 0.89]), #0.039944
    InflationGSWeighted(0.74527335, 0.78366727, 0.28099474, 4.061247), # 0.03809696
    InflationPercentileWeighted(71), # 0.0602415
    InflationTrimmedMeanWeighted(25.0, 95.0), # 0.0531553
]

W_ABSME_10 = [
    0.7286476, #Dynamic Exclusion (0.26, 1.19)
    0.023246184, #Unweighted Gausssian Smoothing (0.74, 0.76, 0.27, 1.853549)
    0.018004412, #Unweighted Percentile 71.0
    0.02491202, #Unweighted Trimmed Mean (36.0, 92.0)
    0.03739139, #Fixed Exclusion (month-on-month) (9,)
    0.034928806, #Core MAI-G (0.01,0.39,0.63,0.75,0.88)
    0.033599824, #Core MAI-F (0.12,0.41,0.7,0.98)
    0.031562895, #Core MAI-FG (0.11,0.22,0.32,0.41,0.52,0.61,0.72,0.8,0.89)
    0.030324489, #Weighted Gausssian Smoothing (0.75, 0.78, 0.28, 4.061247)
    0.016526006, #Weighted Percentile 71.0
    0.020956432, #Weighted Trimmed Mean (25.0, 95.0)
]

OPT_ABSME_10 = CombinationFunction(ENSEMBLE_ABSME_10..., W_ABSME_10)


ENSEMBLE_ABSME_23 = [
    InflationDynamicExclusion(0.13, 0.1), # 0.036403127
    InflationGSEq(0.01511252, 0.34270462, 0.99545085, 0.05630284), # 0.014848197
    InflationPercentileEq(62), # 0.127851 <---- Valor del ABSME
    InflationTrimmedMeanEq(20.0, 89.0), # 0.123939
    InflationCoreMaiG(GTDATA24_CALIB, [0.1, 0.26, 0.42, 0.55, 0.63, 0.76, 0.87]), # 0.083956
    InflationCoreMaiF(GTDATA24_CALIB, [0.13, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.79, 0.9]), # 0.131867
    InflationCoreMaiFG(GTDATA24_CALIB, [0.15, 0.26, 0.36, 0.49, 0.64, 0.77, 0.93]), # 0.186242
    InflationGSWeighted(0.38506818, 0.53551006, 0.8414891, 6.2112446), # 0.012374846
    InflationPercentileWeighted(59), # 0.129889
    InflationTrimmedMeanWeighted(20.0, 88.0), # 0.121477
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162],
        [29, 39, 46, 197, 30, 31, 274, 116, 40],
        [71], [70],
    ), #0.0643999
]

W_ABSME_23 = [
    0.029035874, #Dynamic Exclusion (0.13, 0.1)
    0.19049612, #Unweighted Gausssian Smoothing (0.02, 0.34, 1.0, 0.05630284)
    0.0068385475, #Unweighted Percentile 62.0
    0.003028404, #Unweighted Trimmed Mean (20.0, 89.0)
    0.18576363, #Core MAI-G (0.1,0.26,0.42,0.55,0.63,0.76,0.87)
    0.08917148, #Core MAI-F (0.13,0.2,0.3,0.4,0.5,0.6,0.7,0.79,0.9)
    0.005097635, #Core MAI-FG (0.15,0.26,0.36,0.49,0.64,0.77,0.93)
    0.47622743, #Weighted Gausssian Smoothing (0.39, 0.54, 0.84, 6.2112446)
    0.004204538, #Weighted Percentile 59.0
    0.010236313, #Weighted Trimmed Mean (20.0, 88.0)
    0.0, #Fixed Exclusion (month-on-month) (2,)
]

OPT_ABSME_23 = CombinationFunction(ENSEMBLE_ABSME_23..., W_ABSME_23)

ENSEMBLE_ABSME_24 = [
    InflationDynamicExclusion(0.13, 0.1), # 0.036403127
    InflationGSEq(0.01511252, 0.34270462, 0.99545085, 0.05630284), # 0.014848197
    InflationPercentileEq(62), # 0.127851 <---- Valor del ABSME
    InflationTrimmedMeanEq(20.0, 89.0), # 0.123939
    InflationCoreMaiG(GTDATA24_CALIB, [0.1, 0.26, 0.42, 0.55, 0.63, 0.76, 0.87]), # 0.083956
    InflationCoreMaiF(GTDATA24_CALIB, [0.13, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.79, 0.9]), # 0.131867
    InflationCoreMaiFG(GTDATA24_CALIB, [0.15, 0.26, 0.36, 0.49, 0.64, 0.77, 0.93]), # 0.186242
    InflationGSWeighted(0.38506818, 0.53551006, 0.8414891, 6.2112446), # 0.012374846
    InflationPercentileWeighted(59), # 0.129889
    InflationTrimmedMeanWeighted(20.0, 88.0), # 0.121477
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162],
        [29, 39, 46, 197, 30, 31, 274, 116, 40],
        [71], [70],
    ), #0.0643999
]

W_ABSME_24 = [
    0.029035874, #Dynamic Exclusion (0.13, 0.1)
    0.19049612, #Unweighted Gausssian Smoothing (0.02, 0.34, 1.0, 0.05630284)
    0.0068385475, #Unweighted Percentile 62.0
    0.003028404, #Unweighted Trimmed Mean (20.0, 89.0)
    0.18576363, #Core MAI-G (0.1,0.26,0.42,0.55,0.63,0.76,0.87)
    0.08917148, #Core MAI-F (0.13,0.2,0.3,0.4,0.5,0.6,0.7,0.79,0.9)
    0.005097635, #Core MAI-FG (0.15,0.26,0.36,0.49,0.64,0.77,0.93)
    0.47622743, #Weighted Gausssian Smoothing (0.39, 0.54, 0.84, 6.2112446)
    0.004204538, #Weighted Percentile 59.0
    0.010236313, #Weighted Trimmed Mean (20.0, 88.0)
    0.0, #Fixed Exclusion (month-on-month) (2,)
]

OPT_ABSME_24 = CombinationFunction(ENSEMBLE_ABSME_24..., W_ABSME_24)

InflationOptimalABSME2026 = InflationSpliceUnweighted(
    OPT_ABSME_00, OPT_ABSME_10, OPT_ABSME_23, OPT_ABSME_24;
    name = "Optimal ABSME Linear Combination (2026 Edition)",
    tag = "InflationOptimalABSME2026"
)


InflationOptimalFXABSME2026 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162],
    [29, 39, 46, 197, 30, 31, 274, 116, 40],
    [71], [70],
)

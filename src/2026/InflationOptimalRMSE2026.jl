ENSEMBLE_RMSE_00 = [
    InflationDynamicExclusion(0.34, 1.7), #0.469024
    InflationGSEq(0.7654184, 0.2856073, 0.103718705, 1.3719237), #0.33284873
    InflationPercentileEq(72), #0.362206
    InflationTrimmedMeanEq(51.0, 87.0), #0.337273
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
        [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
        [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
        [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
    ), #0.802797
    InflationCoreMaiG(GTDATA00, [0.54, 0.67]), # 0.506933
    InflationCoreMaiF(GTDATA00, [0.32, 0.58, 0.65]), #  0.765745
    InflationCoreMaiFG(GTDATA00, [0.27, 0.47, 0.66, 0.79]), # 0.335138
    InflationGSWeighted(0.4594013, 0.0060183853, 0.3064191, 2.0580156), #0.4523263
    InflationPercentileWeighted(69), #0.519509
    InflationTrimmedMeanWeighted(33.0, 92.0), #0.466124
]

W_RMSE_00 = [
    0.000060921575, #Dynamic Exclusion (0.34, 1.7)
    0.3521437, #Unweighted Gausssian Smoothing (0.77, 0.29, 0.1, 1.3719237)
    0.037125904, #Unweighted Percentile 72.0
    0.18583465, #Unweighted Trimmed Mean (51.0, 87.0)
    0.05662032, #Fixed Exclusion (month-on-month) (18,)
    0.0009914164, #Core MAI-G (0.54,0.67)
    0.0000004300323, #Core MAI-F (0.32,0.58,0.65)
    0.36700445, #Core MAI-FG (0.27,0.47,0.66,0.79)
    0.00008301331, #Weighted Gausssian Smoothing (0.46, 0.01, 0.31, 2.0580156)
    0.00023087328, #Weighted Percentile 69.0
    0.0000043006044, #Weighted Trimmed Mean (33.0, 92.0)
]

W_RMSE_00_REGULARIZED = [
    0.04659264, #Dynamic Exclusion (0.34, 1.7)
    0.1798357, #Unweighted Gausssian Smoothing (0.77, 0.29, 0.1, 1.3719237)
    0.11465887, #Unweighted Percentile 72.0
    0.12469521, #Unweighted Trimmed Mean (51.0, 87.0)
    0.05042883, #Fixed Exclusion (month-on-month) (18,)
    0.041622225, #Core MAI-G (0.54,0.67)
    0.037064604, #Core MAI-F (0.32,0.58,0.65)
    0.2780278, #Core MAI-FG (0.27,0.47,0.66,0.79)
    0.04454395, #Weighted Gausssian Smoothing (0.46, 0.01, 0.31, 2.0580156)
    0.03986411, #Weighted Percentile 69.0
    0.042666048, #Weighted Trimmed Mean (33.0, 92.0)
]

OPT_RMSE_00 = CombinationFunction(ENSEMBLE_RMSE_00..., W_RMSE_00)
OPT_RMSE_00_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_00..., W_RMSE_00_REGULARIZED)

ENSEMBLE_RMSE_10 = [
    InflationDynamicExclusion(0.26, 1.19), #0.38261288
    InflationGSEq(0.75104356, 0.38525668, 0.13529849, 1.0422423), # 0.30544218
    InflationPercentileEq(71.5), #  0.37032 <---- Valor del RMSE
    InflationTrimmedMeanEq(47.0, 88.0), # 0.363388
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
        [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
        [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
        [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
    ), #0.633398
    InflationCoreMaiG(GTDATA, [0.01, 0.44, 0.65, 0.75, 0.83]), # 0.569342
    InflationCoreMaiF(GTDATA, [0.07, 0.37, 0.69, 0.84]), # 0.346197
    InflationCoreMaiFG(GTDATA, [0.36, 0.76]), # 0.318164
    InflationGSWeighted(0.77709866, 0.36841843, 0.10789215, 1.5236617), # 0.43405446
    InflationPercentileWeighted(71), #  0.481309
    InflationTrimmedMeanWeighted(30.0, 94.0), # 0.452409
]

W_RMSE_10 = [
    0.025386384, #Dynamic Exclusion (0.26, 1.19)
    0.38240376, #Unweighted Gausssian Smoothing (0.75, 0.39, 0.14, 1.0422423)
    0.0025649907, #Unweighted Percentile 71.5
    0.01858759, #Unweighted Trimmed Mean (47.0, 88.0)
    0.14148879, #Fixed Exclusion (month-on-month) (19,)
    0.00521214, #Core MAI-G (0.01,0.44,0.65,0.75,0.83)
    0.0040437733, #Core MAI-F (0.07,0.37,0.69,0.84)
    0.41650856, #Core MAI-FG (0.36,0.76)
    0.000048627673, #Weighted Gausssian Smoothing (0.78, 0.37, 0.11, 1.5236617)
    0.0033807629, #Weighted Percentile 71.0
    0.0004741381, #Weighted Trimmed Mean (30.0, 94.0)
]

W_RMSE_10_REGULARIZED = [
    0.077932864, #Dynamic Exclusion (0.26, 1.19)
    0.15840916, #Unweighted Gausssian Smoothing (0.75, 0.39, 0.14, 1.0422423)
    0.083507635, #Unweighted Percentile 71.5
    0.07826654, #Unweighted Trimmed Mean (47.0, 88.0)
    0.117326595, #Fixed Exclusion (month-on-month) (19,)
    0.044876035, #Core MAI-G (0.01,0.44,0.65,0.75,0.83)
    0.10262466, #Core MAI-F (0.07,0.37,0.69,0.84)
    0.18983482, #Core MAI-FG (0.36,0.76)
    0.049914576, #Weighted Gausssian Smoothing (0.78, 0.37, 0.11, 1.5236617)
    0.04831031, #Weighted Percentile 71.0
    0.04899681, #Weighted Trimmed Mean (30.0, 94.0)
]

OPT_RMSE_10 = CombinationFunction(ENSEMBLE_RMSE_10..., W_RMSE_10)
OPT_RMSE_10_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_10..., W_RMSE_10_REGULARIZED)


# Calibration data until october 2025
ENSEMBLE_RMSE_23 = [
    InflationDynamicExclusion(0.13, 0.1), # 0.09307264
    InflationGSEq(0.8200928, 0.5850182, 0.05166371, 0.32362762), # 0.076663025
    InflationPercentileEq(61.5), # 0.146853 <---- Valor del RMSE
    InflationTrimmedMeanEq(21.0, 88.0), # 0.141866
    InflationCoreMaiG(GTDATA_CALIB_2026, [0.04, 0.69, 0.97]), # 0.082798
    InflationCoreMaiF(GTDATA_CALIB_2026, [0.08, 0.3, 0.4, 0.52, 0.61, 0.78, 0.95]), # 0.544066
    InflationCoreMaiFG(GTDATA_CALIB_2026, [0.11, 0.23, 0.32, 0.43, 0.48, 0.61, 0.72, 0.77, 0.94]), # 0.217182
    InflationGSWeighted(0.44999397, 0.34137973, 0.46160948, 3.1527925), # 0.13493738
    InflationPercentileWeighted(58.5), #  0.161505
    InflationTrimmedMeanWeighted(21.0, 87.0), # 0.149813
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
        [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
        [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
        [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
    ), #0.110352
]

W_RMSE_23 = [
    0.10529911, #Dynamic Exclusion (0.13, 0.1)
    0.53805065, #Unweighted Gausssian Smoothing (0.82, 0.59, 0.05, 0.32362762)
    0.00000020937125, #Unweighted Percentile 61.5
    0.0000010857873, #Unweighted Trimmed Mean (21.0, 88.0)
    0.009465043, #Core MAI-G (0.04,0.69,0.97)
    0.11158516, #Core MAI-F (0.08,0.3,0.4,0.52,0.61,0.78,0.95)
    0.2356902, #Core MAI-FG (0.11,0.23,0.32,0.43,0.48,0.61,0.72,0.77,0.94)
    0.0000024002002, #Weighted Gausssian Smoothing (0.45, 0.34, 0.46, 3.1527925)
    0.0000007303269, #Weighted Percentile 58.5
    0.000005406305, #Weighted Trimmed Mean (21.0, 87.0)
    0.0, #Fixed Exclusion (month-on-month) (36,)
]

W_RMSE_23_REGULARIZED = [
    0.10970265, #Dynamic Exclusion (0.13, 0.1)
    0.10774889, #Unweighted Gausssian Smoothing (0.82, 0.59, 0.05, 0.32362762)
    0.07122856, #Unweighted Percentile 61.5
    0.07356738, #Unweighted Trimmed Mean (21.0, 88.0)
    0.06934129, #Core MAI-G (0.04,0.69,0.97)
    0.20713921, #Core MAI-F (0.08,0.3,0.4,0.52,0.61,0.78,0.95)
    0.15263869, #Core MAI-FG (0.11,0.23,0.32,0.43,0.48,0.61,0.72,0.77,0.94)
    0.07267335, #Weighted Gausssian Smoothing (0.45, 0.34, 0.46, 3.1527925)
    0.06611479, #Weighted Percentile 58.5
    0.0698452, #Weighted Trimmed Mean (21.0, 87.0)
    0.0, #Fixed Exclusion (month-on-month) (36,)
]

OPT_RMSE_23 = CombinationFunction(ENSEMBLE_RMSE_23..., W_RMSE_23)
OPT_RMSE_23_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_23..., W_RMSE_23_REGULARIZED)

ENSEMBLE_RMSE_24 = [
    InflationDynamicExclusion(0.13, 0.1), # 0.09307264
    InflationGSEq(0.8200928, 0.5850182, 0.05166371, 0.32362762), # 0.076663025
    InflationPercentileEq(61.5), # 0.146853 <---- Valor del RMSE
    InflationTrimmedMeanEq(21.0, 88.0), # 0.141866
    InflationCoreMaiG(GTDATA_CALIB_2026, [0.04, 0.69, 0.97]), # 0.082798
    InflationCoreMaiF(GTDATA_CALIB_2026, [0.08, 0.3, 0.4, 0.52, 0.61, 0.78, 0.95]), # 0.544066
    InflationCoreMaiFG(GTDATA_CALIB_2026, [0.11, 0.23, 0.32, 0.43, 0.48, 0.61, 0.72, 0.77, 0.94]), # 0.217182
    InflationGSWeighted(0.44999397, 0.34137973, 0.46160948, 3.1527925), # 0.13493738
    InflationPercentileWeighted(58.5), #  0.161505
    InflationTrimmedMeanWeighted(21.0, 87.0), # 0.149813
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
        [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
        [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
        [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
    ), #0.110352
]

W_RMSE_24 = [
    0.10529911, #Dynamic Exclusion (0.13, 0.1)
    0.53805065, #Unweighted Gausssian Smoothing (0.82, 0.59, 0.05, 0.32362762)
    0.00000020937125, #Unweighted Percentile 61.5
    0.0000010857873, #Unweighted Trimmed Mean (21.0, 88.0)
    0.009465043, #Core MAI-G (0.04,0.69,0.97)
    0.11158516, #Core MAI-F (0.08,0.3,0.4,0.52,0.61,0.78,0.95)
    0.2356902, #Core MAI-FG (0.11,0.23,0.32,0.43,0.48,0.61,0.72,0.77,0.94)
    0.0000024002002, #Weighted Gausssian Smoothing (0.45, 0.34, 0.46, 3.1527925)
    0.0000007303269, #Weighted Percentile 58.5
    0.000005406305, #Weighted Trimmed Mean (21.0, 87.0)
    0.0, #Fixed Exclusion (month-on-month) (36,)
]

W_RMSE_24_REGULARIZED = [
    0.10970265, #Dynamic Exclusion (0.13, 0.1)
    0.10774889, #Unweighted Gausssian Smoothing (0.82, 0.59, 0.05, 0.32362762)
    0.07122856, #Unweighted Percentile 61.5
    0.07356738, #Unweighted Trimmed Mean (21.0, 88.0)
    0.06934129, #Core MAI-G (0.04,0.69,0.97)
    0.20713921, #Core MAI-F (0.08,0.3,0.4,0.52,0.61,0.78,0.95)
    0.15263869, #Core MAI-FG (0.11,0.23,0.32,0.43,0.48,0.61,0.72,0.77,0.94)
    0.07267335, #Weighted Gausssian Smoothing (0.45, 0.34, 0.46, 3.1527925)
    0.06611479, #Weighted Percentile 58.5
    0.0698452, #Weighted Trimmed Mean (21.0, 87.0)
    0.0, #Fixed Exclusion (month-on-month) (36,)
]

OPT_RMSE_24 = CombinationFunction(ENSEMBLE_RMSE_24..., W_RMSE_24)
OPT_RMSE_24_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_24..., W_RMSE_24_REGULARIZED)

# Instance of the optimal measures
"""
    InflationOptimalRMSE2026 <: InflationSpliceUnweighted

Core inflation measure, optimal linear combination
based on the RMSE methodology for the 2026 edition.

"""
InflationOptimalRMSE2026 = InflationSpliceUnweighted(
    OPT_RMSE_00, OPT_RMSE_10, OPT_RMSE_23, OPT_RMSE_24;
    name = "Optimal RMSE Linear Combination (2026 Edition)",
    tag = "InflationOptimalRMSE2026"
)

InflationOptimalRMSE2026Regularized = InflationSpliceUnweighted(
    OPT_RMSE_00_REGULARIZED,
    OPT_RMSE_10_REGULARIZED,
    OPT_RMSE_23_REGULARIZED,
    OPT_RMSE_24_REGULARIZED;
    name = "Optimal Regularized RMSE Linear Combination (2026 Edition)",
    tag = "InflationOptimalRMSE2026Regularized"
)

# Inflation Fixed Exclusion Functions

InflationOptimalFixedExclusionRMSE2026b00 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
    [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
    [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
    [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
)
InflationOptimalFixedExclusionRMSE2026b10 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
    [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
    [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
    [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
)
InflationOptimalFixedExclusionRMSE2026b23 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
    [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
    [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
    [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
)
InflationOptimalFixedExclusionRMSE2026b24 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162, 34, 23, 26, 104, 51, 32, 186, 159, 193], #00
    [29, 39, 46, 197, 30, 31, 274, 116, 40, 35, 186, 47, 37, 185, 237, 34, 184, 44, 48], #10
    [71, 328, 52, 69, 72, 74, 73, 49, 63, 75, 80, 60, 77, 46, 65, 62, 238, 370, 194, 78, 61, 59, 315, 66, 50, 67, 378, 70, 308, 307, 216, 76, 55, 98, 88, 195], #23
    [70, 327, 51, 68, 71, 73, 72, 48, 62, 74, 79, 59, 76, 45, 64, 61, 237, 369, 193, 77, 60, 58, 314, 65, 49, 66, 377, 69, 307, 306, 215, 75, 54, 97, 87, 194], #24
)

"""
    InflationOptimalFixedExclusionRMSE2026 <: InflationSpliceUnweighted

"""
InflationOptimalFixedExclusionRMSE2026 = InflationSpliceUnweighted(
    [
        InflationOptimalFixedExclusionRMSE2026b00,
        InflationOptimalFixedExclusionRMSE2026b10,
        InflationOptimalFixedExclusionRMSE2026b23,
        InflationOptimalFixedExclusionRMSE2026b24,
    ];
    name = "Optimal Fixed Exclusion RMSE (2026 Edition)",
    tag = "OptFixExclRMSE2026"
)

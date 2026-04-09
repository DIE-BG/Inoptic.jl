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

# Complexity-based weights for the "B" version of the optimal combination: We
# assign more weight to the "robust" (simpler) measures
W_RMSE_23_B = [
    0.019724239,   # Dynamic Exclusion (0.13, 0.1)
    0.009505227,   # Unweighted Gausssian Smoothing (0.82, 0.59, 0.05, 0.32362762)
    2.0164892e-7,  # Unweighted Percentile 61.5
    0.926568,      # Unweighted Trimmed Mean (21.0, 88.0)
    0.0069095925,  # Core MAI-G (0.04,0.69,0.97)
    0.019066952,   # Core MAI-F (0.08,0.3,0.4,0.52,0.61,0.78,0.95)
    0.014972307,   # Core MAI-FG (0.11,0.23,0.32,0.43,0.48,0.61,0.72,0.77,0.94)
    0.0032489155,  # Weighted Gausssian Smoothing (0.45, 0.34, 0.46, 3.1527925)
    7.3039686e-8,  # Weighted Percentile 58.5
    4.490031e-6,   # Weighted Trimmed Mean (21.0, 87.0)
    0.0,           # Fixed Exclusion (month-on-month) (36,)
]

OPT_RMSE_23 = CombinationFunction(ENSEMBLE_RMSE_23..., W_RMSE_23)
# One regularized version to spread the weights away from 0
OPT_RMSE_23_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_23..., W_RMSE_23_REGULARIZED)
# And a "B" version of the optimal combination, with complexity-based weights
OPT_RMSE_23_B = CombinationFunction(ENSEMBLE_RMSE_23..., W_RMSE_23_B)

# For the 2024 CPI base, we use the same combined calibration of the 2023-2024 combined base
ENSEMBLE_RMSE_24 = ENSEMBLE_RMSE_23
W_RMSE_24 = W_RMSE_23
W_RMSE_24_REGULARIZED = W_RMSE_23_REGULARIZED
W_RMSE_24_B = W_RMSE_23_B

OPT_RMSE_24 = CombinationFunction(ENSEMBLE_RMSE_24..., W_RMSE_24)
OPT_RMSE_24_REGULARIZED = CombinationFunction(ENSEMBLE_RMSE_24..., W_RMSE_24_REGULARIZED)
OPT_RMSE_24_B = CombinationFunction(ENSEMBLE_RMSE_24..., W_RMSE_24_B)

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

# Regularized "B" version of the optimal combination: We use a complexity-based
# penalty for each kind of measure to assign more weight to the "robust"
# (simpler) measures
"""
    InflationOptimalRMSE2026B <: InflationSpliceUnweighted

Core inflation measure, optimal linear combination based on the RMSE methodology for the 2026 edition.
We use a complexity-based penalty for each kind of measure to assign more weight to the "robust" (simpler) measures
"""
InflationOptimalRMSE2026B = InflationSpliceUnweighted(
    OPT_RMSE_00, OPT_RMSE_10, OPT_RMSE_23_B, OPT_RMSE_24_B;
    name = "Optimal RMSE Linear Combination (2026 B Regularized)",
    tag = "InflationOptimalRMSE2026B"
)


## Inflation Optimal RMSE confident intervals

InflationOptimalRMSE2026_ci = DataFrame(
    period = repeat(["Base 2000", "Base 2010", "Base 2023-2024"], inner = 6),
    evalperiod = repeat(
        [
            Date(2001, 12):Month(1):Date(2010, 12),
            Date(2011, 1):Month(1):Date(2023, 12),
            Date(2024, 1):Month(1):Date(2030, 12),
        ],
        inner = 6
    ),
    limits_all_measures = [
        # Base 2000
        (-0.5221128463745117, 0.7300508022308361),      # 0.8 
        (-0.596034049987793, 0.8307465553283686),       # 0.85
        (-0.6969571113586426, 0.9665018320083624),      # 0.9
        (-0.8650788545608521, 1.1815071105957031),      # 0.95
        (-1.04292631149292, 1.381290203332901),         # 0.975
        (-1.3368967175483704, 1.619661629199975),       # 0.995
        # Base 2010 
        (-0.4506826400756836, 0.5057096481323242),      # 0.8 
        (-0.505983829498291, 0.6148108839988703),       # 0.85
        (-0.5864977836608887, 0.7749092578887951),      # 0.9
        (-0.7360938191413879, 1.0732775926589944),      # 0.95
        (-0.8980751037597656, 1.437653005123135),       # 0.975
        (-1.1359574794769287, 1.9079930162429664),      # 0.995
        # Base 2023-2024
        (-0.15764236450195312, 0.35636425018310547),    # 0.8 
        (-0.19506216049194336, 0.39124578237533564),    # 0.85
        (-0.23948192596435547, 0.4360079765319824),     # 0.9
        (-0.3073829412460327, 0.5013704299926758),      # 0.95
        (-0.37333041429519653, 0.5699397623538971),     # 0.975
        (-0.4816058874130249, 0.6815910935401917),      # 0.995
    ],
    limits_opt_combination = [
        # Base 2000
        (-0.379011344909668, 0.4381612300872803),       # 0.8 
        (-0.43178175687789916, 0.5002798438072205),     # 0.85
        (-0.4987290382385254, 0.5834686279296875),      # 0.9
        (-0.6002422332763672, 0.7120944857597348),      # 0.95
        (-0.6851988077163697, 0.8273140907287596),      # 0.975
        (-0.7790186786651612, 0.9689627313613901),      # 0.995
        # Base 2010
        (-0.2879772663116455, 0.3085782289505006),      # 0.8  
        (-0.32345529198646544, 0.3619163393974306),     # 0.85     
        (-0.3708346962928772, 0.44509441852569565),     # 0.9     
        (-0.4449660301208496, 0.6675526142120358),      # 0.95 
        (-0.5100475430488587, 1.0388324916362772),      # 0.975 
        (-0.5894340240955354, 1.42160943746567),        # 0.995 
        # Base 2023-2024
        (-0.1076572060585022, 0.12787536382675177),     # 0.8  
        (-0.12111884355545044, 0.14401302933692933),    # 0.85         
        (-0.1412006437778473, 0.1628405213356018),      # 0.9         
        (-0.1680258721113205, 0.1919626891613006),      # 0.95 
        (-0.1867515742778778, 0.22070285677909873),     # 0.975 
        (-0.2079521656036377, 0.24862127363681644),     # 0.995 
    ],
    confidence = repeat([0.8, 0.85, 0.9, 0.95, 0.975, 0.995], outer = 3)
)

# Confidence intervals for the B optimal combination
InflationOptimalRMSE2026B_ci = DataFrame(
    period = repeat(["Base 2000", "Base 2010", "Base 2023-2024"], inner = 6),
    evalperiod = repeat(
        [
            Date(2001, 12):Month(1):Date(2010, 12),
            Date(2011, 1):Month(1):Date(2023, 12),
            Date(2024, 1):Month(1):Date(2030, 12),
        ],
        inner = 6
    ),
    limits_all_measures = [
        # Base 2000
        (-0.5221128463745117, 0.7300508022308361),      # 0.8 
        (-0.596034049987793, 0.8307465553283686),       # 0.85
        (-0.6969571113586426, 0.9665018320083624),      # 0.9
        (-0.8650788545608521, 1.1815071105957031),      # 0.95
        (-1.04292631149292, 1.381290203332901),         # 0.975
        (-1.3368967175483704, 1.619661629199975),       # 0.995
        # Base 2010 
        (-0.4506826400756836, 0.5057096481323242),      # 0.8 
        (-0.505983829498291, 0.6148108839988703),       # 0.85
        (-0.5864977836608887, 0.7749092578887951),      # 0.9
        (-0.7360938191413879, 1.0732775926589944),      # 0.95
        (-0.8980751037597656, 1.437653005123135),       # 0.975
        (-1.1359574794769287, 1.9079930162429664),      # 0.995
        # Base 2023-2024
        (-0.15764236450195312, 0.35636425018310547),    # 0.8 
        (-0.19506216049194336, 0.39124578237533564),    # 0.85
        (-0.23948192596435547, 0.4360079765319824),     # 0.9
        (-0.3073829412460327, 0.5013704299926758),      # 0.95
        (-0.37333041429519653, 0.5699397623538971),     # 0.975
        (-0.4816058874130249, 0.6815910935401917),      # 0.995
    ],
    limits_opt_combination = [
        # Base 2000
        (-0.379011344909668, 0.4381612300872803),       # 0.8 
        (-0.43178175687789916, 0.5002798438072205),     # 0.85
        (-0.4987290382385254, 0.5834686279296875),      # 0.9
        (-0.6002422332763672, 0.7120944857597348),      # 0.95
        (-0.6851988077163697, 0.8273140907287596),      # 0.975
        (-0.7790186786651612, 0.9689627313613901),      # 0.995
        # Base 2010
        (-0.2879772663116455, 0.3085782289505006),      # 0.8  
        (-0.32345529198646544, 0.3619163393974306),     # 0.85     
        (-0.3708346962928772, 0.44509441852569565),     # 0.9     
        (-0.4449660301208496, 0.6675526142120358),      # 0.95 
        (-0.5100475430488587, 1.0388324916362772),      # 0.975 
        (-0.5894340240955354, 1.42160943746567),        # 0.995 
        # Base 2023-2024
        (-0.03589746952056884, 0.3632619142532349),     # 0.8 
        (-0.04537867307662964, 0.38737669885158543),    # 0.85    
        (-0.055617374181747434, 0.41315907835960386),   # 0.9    
        (-0.07174447178840637, 0.4442718833684921),     # 0.95
        (-0.0855391800403595, 0.47025706619024277),     # 0.975
        (-0.10022449493408203, 0.4958100688457486),     # 0.995
    ],
    confidence = repeat([0.8, 0.85, 0.9, 0.95, 0.975, 0.995], outer = 3)
)


## Inflation Fixed Exclusion Functions

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

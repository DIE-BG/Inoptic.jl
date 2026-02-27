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
    InflationDynamicExclusion(0.13, 0.1), # 0.0512
    InflationGSEq(0.01511252, 0.34270462, 0.99545085, 0.05630284), # 0.1004
    InflationPercentileEq(62), # 0.1181
    InflationTrimmedMeanEq(2.0, 98.0), # 0.0724
    InflationCoreMaiG(GTDATA_CALIB_2026, [0.1, 0.26, 0.42, 0.55, 0.63, 0.76, 0.87]), # 0.1879
    InflationCoreMaiF(GTDATA_CALIB_2026, [0.13, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.79, 0.9]), # 0.3762
    InflationCoreMaiFG(GTDATA_CALIB_2026, [0.15, 0.26, 0.36, 0.49, 0.64, 0.77, 0.93]), # 0.1476
    InflationGSWeighted(0.38506818, 0.53551006, 0.8414891, 6.2112446), # Parameters equivalent to weighted total mean
    InflationPercentileWeighted(59), # 0.1158
    InflationTrimmedMeanWeighted(0, 100), # 0.121477
    InflationFixedExclusionCPI(
        [30, 35, 31, 40, 190, 37, 41, 36, 162],
        [29, 39, 46, 197, 30, 31, 274, 116, 40],
        [71], 
        [70],
    ), #0.0643999
]

# Non-regularized weights for the ABSME metric 

# Weighted Gaussian smoothing and weighted trimmed mean emulated total weighted
# mean, inducing high volatility, so they are not included in the regularized
# combination

# W_ABSME_23 = [
#     0.029035874, #Dynamic Exclusion (0.13, 0.1)
#     0.19049612, #Unweighted Gausssian Smoothing (0.02, 0.34, 1.0, 0.05630284)
#     0.0068385475, #Unweighted Percentile 62.0
#     0.003028404, #Unweighted Trimmed Mean (20.0, 89.0)
#     0.18576363, #Core MAI-G (0.1,0.26,0.42,0.55,0.63,0.76,0.87)
#     0.08917148, #Core MAI-F (0.13,0.2,0.3,0.4,0.5,0.6,0.7,0.79,0.9)
#     0.005097635, #Core MAI-FG (0.15,0.26,0.36,0.49,0.64,0.77,0.93)
#     0.47622743, #Weighted Gausssian Smoothing (0.39, 0.54, 0.84, 6.2112446)
#     0.004204538, #Weighted Percentile 59.0
#     0.010236313, #Weighted Trimmed Mean (0.0, 88.0)
#     0.0, #Fixed Exclusion (month-on-month) (2,)
# ]

# Regularized weights, excluding weighted Gaussian smoothing and weighted trimmed mean
W_ABSME_23_REGULARIZED = [
    0.103914134,    # Dynamic Exclusion (0.13, 0.1)
    0.33202627 ,    # Unweighted Gausssian Smoothing (0.02, 0.34, 1.0, 0.05630284)
    0.027889071,    # Unweighted Percentile 62.0
    0.038830638,    # Unweighted Trimmed Mean (2.0, 98.0)
    0.3056138  ,    # Core MAI-G (0.1,0.26,0.42,0.55,0.63,0.76,0.87)
    -5.185e-42 ,    # Core MAI-F (0.13,0.2,0.3,0.4,0.5,0.6,0.7,0.79,0.9)
    0.16749501 ,    # Core MAI-FG (0.15,0.26,0.36,0.49,0.64,0.77,0.93)
    0,              # Weighted Gausssian Smoothing (0.39, 0.54, 0.84, 6.2112446)
    0.026793065,    # Weighted Percentile 59.0
    0,              # Weighted Trimmed Mean (0, 100)
    0,              # Fixed Exclusion (month-on-month) (2,)
]

# Note we use the regularized weights for the optimal combination
OPT_ABSME_23 = CombinationFunction(ENSEMBLE_ABSME_23..., W_ABSME_23_REGULARIZED)

# Joint CPI base 2023-2024
# So, we use the same optimal combination as in the 2023 CPI base
ENSEMBLE_ABSME_24 = ENSEMBLE_ABSME_23
W_ABSME_24 = W_ABSME_23_REGULARIZED

OPT_ABSME_24 = CombinationFunction(ENSEMBLE_ABSME_24..., W_ABSME_24)

"""
    InflationOptimalABSME2026 <: InflationSpliceUnweighted

Core inflation measure, optimal linear combination
based on the ABSME methodology for the 2026 edition.

"""

InflationOptimalABSME2026 = InflationSpliceUnweighted(
    OPT_ABSME_00, OPT_ABSME_10, OPT_ABSME_23, OPT_ABSME_24;
    name = "Optimal ABSME Linear Combination (2026 Edition)",
    tag = "InflationOptimalABSME2026"
)


# Inflation Fixed Exclusion Functions

InflationOptimalFixedExclusionABSME2026b00 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162],
    [29, 39, 46, 197, 30, 31, 274, 116, 40],
    [71], [70],
)
InflationOptimalFixedExclusionABSME2026b10 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162],
    [29, 39, 46, 197, 30, 31, 274, 116, 40],
    [71], [70],
)
InflationOptimalFixedExclusionABSME2026b23 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162],
    [29, 39, 46, 197, 30, 31, 274, 116, 40],
    [71], [70],
)

InflationOptimalFixedExclusionABSME2026b24 = InflationFixedExclusionCPI(
    [30, 35, 31, 40, 190, 37, 41, 36, 162],
    [29, 39, 46, 197, 30, 31, 274, 116, 40],
    [71], [70],
)

"""
    InflationOptimalFixedExclusionABSME2026 <: InflationSpliceUnweighted

"""
InflationOptimalFixedExclusionABSME2026 = InflationSpliceUnweighted(
    [
        InflationOptimalFixedExclusionABSME2026b00,
        InflationOptimalFixedExclusionABSME2026b10,
        InflationOptimalFixedExclusionABSME2026b23,
        InflationOptimalFixedExclusionABSME2026b24,
    ];
    name = "Optimal Fixed Exclusion ABSME (2026 Edition)",
    tag = "OptFixExclABSME2026"
)

## Inflation Optimal ABSME confident intervals

InflationOptimalABSME2026_ci = DataFrame(
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
        (-0.6729365348815919, 0.6440763473510742),
        (-0.7606267929077148, 0.7454633712768555),
        (-0.8846282958984375, 0.8828043937683105),
        (-1.1127824783325195, 1.10551118850708),
        (-1.3750791549682617, 1.3144850730895996),
        (-1.7891764640808105, 1.5780682563781738),
        (-0.49455285072326666, 0.5420457839965831),
        (-0.5690336227416992, 0.6440997123718262),
        (-0.6794452667236328, 0.7971882820129395),
        (-0.8855342864990234, 1.0806807875633206),
        (-1.1112570762634277, 1.4076535403728467),
        (-1.4586575627326965, 1.8682487607002085),
        (-0.20221471786499023, 0.27408599853515625),
        (-0.23504585027694702, 0.3038644790649414),
        (-0.27421772480010986, 0.3445273637771607),
        (-0.3317129611968994, 0.4047635197639465),
        (-0.3888733685016632, 0.4572401940822599),
        (-0.46237713098526, 0.5238065123558053),


    ],
    limits_opt_combination = [
        (-0.6573384284973145, 0.6321613311767584),
        (-0.745882248878479, 0.7110872268676758),
        (-0.8646775007247924, 0.8140518903732302),
        (-1.055556583404541, 0.9754739284515379),
        (-1.2312245666980743, 1.12453898191452),
        (-1.4579076814651488, 1.308334355354309),
        (-0.403867244720459, 0.41227777004241944),
        (-0.45553465485572814, 0.47692622542381313),
        (-0.5302025675773621, 0.5726297378540037),
        (-0.6440294563770295, 0.7605935573577878),
        (-0.7600400745868683, 1.0228307962417609),
        (-0.929801893234253, 1.404604427814485),
        (-0.12664270401000977, 0.14797530174255372),
        (-0.14337053894996643, 0.16622551977634442),
        (-0.16347741484642028, 0.19023258686065672),
        (-0.19019728899002075, 0.2270654797554016),
        (-0.2123040661215782, 0.2580475926399232),
        (-0.2466977059841156, 0.2845555728673929),


    ],

    confidence = repeat([0.8, 0.85, 0.9, 0.95, 0.975, 0.995], outer = 3)

)



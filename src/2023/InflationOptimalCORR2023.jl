# Function of linear combinationCORR 2023


# Define optimal Core MAI, calibrated with data until 2019
InflationOptimalMaiCORR2023 = let
    # Components of MAI
    maifns = [
        InflationCoreMaiF(GTDATA_CALIB_2023, [0.0, 0.25752, 0.506395, 0.749041, 1.0]),
        InflationCoreMaiFG(GTDATA_CALIB_2023, [0.0, 0.252018, 0.502175, 0.742866, 1.0]),
        InflationCoreMaiG(GTDATA_CALIB_2023, [0.0, 0.260524, 0.503361, 0.746734, 1.0]),
    ]

    # MAI weights
    mai_weights = Float32[0.31277, 0.333722, 0.353508]

    # Optimal Core MAI by method CORR
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima CORR 2023",
        "MAIOPTCORR23",
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFXCORR2023 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [
            29, 31, 116, 39, 46, 40, 30, 35, 186, 47, 197, 41, 22, 48, 185,
            34, 184, 25, 38, 37, 229, 32, 45, 3, 33, 44, 237, 274, 19, 10,
            42, 24, 15, 59, 43, 27, 275, 61, 115, 23, 71, 26, 113, 49, 268,
            236, 213, 117, 20, 36, 9,
        ],
        [],
        [],
    )
)

# Define optimal combination CORR 2023, optimized with componentes until 2019
# and adjusted weights  with data until  2021.

"""
    InflationOptimalCORR2023 <: CombinationFunction

Core inflation measure, optimal linear combination
based on the CORR methodology for the 2023 edition.

"""

InflationOptimalCORR2023 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(0.80864954),
        InflationPercentileWeighted(0.80995136),
        InflationTrimmedMeanEq([55.0, 92.0]),
        InflationTrimmedMeanWeighted([53.555, 96.4679]),
        InflationDynamicExclusion([0.46, 4.97]),
        InflationOptimalFXCORR2023,
        InflationOptimalMaiCORR2023,
    ]

    # Weights of others components
    corr_weights = Float32[
        0.0156025,
        0.0115825,
        0.916461,
        0.00657209,
        1.30666e-7,
        0.0,
        0.0498786,
    ]

    # Optimal core CORR v2023
    optcorr2023 = CombinationFunction(
        components...,
        corr_weights,
        "Optimal CORR Linear Combination  (2023 Edition) 2023",
        "OPTCORR23"
    )

    optcorr2023
end

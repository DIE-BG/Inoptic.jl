# Function of linear combinationABSME 2023

# Define optimal Core MAI, calibrated with data until 2019
InflationOptimalMaiABSME2023 = let
    # Components of MAI
    maifns = [
        InflationCoreMaiF(GTDATA_CALIB_2023, [0.0, 0.384589, 0.429569, 0.574328, 0.854354, 1.0]),
        InflationCoreMaiFG(GTDATA_CALIB_2023, [0.0, 0.170386, 0.401727, 0.845245, 1.0]),
        InflationCoreMaiG(GTDATA_CALIB_2023, [0.0, 0.148357, 0.315087, 0.526742, 0.615879, 0.776466, 1.0]),
    ]

    # MAI weights
    mai_weights = Float32[0.504968, 0.324949, 0.170083]

    # Optimal Core MAI by method ABSME
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima ABSME 2023",
        "MAIOPTABSME23",
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFXABSME2023 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162],
        [29, 31, 116, 39, 46, 40],
        [],
        [],
    )
)

# Define optimal combination ABSME 2023, optimized with componentes until 2019
# and adjusted weights  with data until  2021.
"""
    InflationOptimalABSME2023 <: CombinationFunction

Core inflation measure, optimal linear combination
based on the ABSME methodology for the 2023 edition.

"""

InflationOptimalABSME2023 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(0.7192383f0),
        InflationPercentileWeighted(0.7022669f0),
        InflationTrimmedMeanEq(33.4117f0, 93.7347f0),
        InflationTrimmedMeanWeighted(32.1643f0, 93.2568f0),
        InflationDynamicExclusion(1.0482f0, 3.4888f0),
        InflationOptimalFXABSME2023,
        InflationOptimalMaiABSME2023,
    ]

    # Weights of others components
    absme_weights = Float32[
        0.112569,
        0.111832,
        0.217031,
        0.137326,
        0.130302,
        0,
        0.290957,
    ]

    # Optimal core ABSME v2023
    optabsme2023 = CombinationFunction(
        components...,
        absme_weights,
        "Optimal ABSME Linear Combination (2023 Edition)",
        "OPTABSME23"
    )

    optabsme2023
end

# Confident limits  97.5%
InflationOptimalABSME2023_ci = DataFrame(
    period = ["Base 2000", "Transición 2000-2010", "Base 2010"],
    evalperiod = [GT_EVAL_B00, GT_EVAL_T0010, EvalPeriod(Date(2011, 12), Date(2023, 12), "upd23")],
    inf_limit = Float32[-0.995903, -0.669305, -0.478735],
    sup_limit = Float32[1.02055, 0.643076, 0.491714]
)

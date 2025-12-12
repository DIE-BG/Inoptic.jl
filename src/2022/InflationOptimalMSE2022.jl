# Function of linear combinationMSE 2022


# Define optimal Core MAI, calibrated with data until 2018
InflationOptimalMaiMSE2022 = let
    # Components of MAI
    maifns = [
        InflationCoreMaiF(GTDATA_CALIB_2022, [0.0, 0.3157660216971966, 0.7047420268794217, 0.7854195537102466, 1.0]),
        InflationCoreMaiFG(GTDATA_CALIB_2022, [0.0, 0.31202186036403323, 0.6974472722077761, 0.8209958044003627, 1.0]),
        InflationCoreMaiG(GTDATA_CALIB_2022, [0.0, 0.05335302029790397, 0.5771838102218124, 0.7498971844656707, 0.7756021151058752, 1.0]),
    ]

    # MAI weights
    mai_weights = Float32[0.7348976, 0.24734181, 0.019569023]

    # Optimal Core MAI by method MSE
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima MSE 2022",
        "MAIOPTMSE22",
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFixedExclusionMSE2022 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [29, 116, 31, 46, 39, 40, 186, 30, 35, 185, 197, 34, 48, 184],
        [],
        [],
    )
)

# Define optimal combination MSE 2022, optimized with componentes until 2018
# and adjusted weights  with data until  2020.

"""
    InflationOptimalMSE2022 <: CombinationFunction

Core inflation measure, optimal linear combination
based on the MSE methodology for the 2022 edition.

"""
InflationOptimalMSE2022 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(72.3966),
        InflationPercentileWeighted(69.9966),
        InflationTrimmedMeanEq(58.7573, 83.152),
        InflationTrimmedMeanWeighted(21.0019, 95.8886),
        InflationDynamicExclusion(0.3158, 1.6832),
        InflationOptimalFixedExclusionMSE2022,
        InflationOptimalMaiMSE2022,
    ]

    # Weights of others components
    mse_weights = Float32[
        6.6092975f-6,
        2.0135817f-6,
        0.7225312,
        3.1271036f-5,
        0.022710389,
        0,
        0.2547185,
    ]

    # Optimal core MSE v2022
    optmse2022 = CombinationFunction(
        components...,
        mse_weights,
        "Optimal MSE Linear Combination (2022 Edition)",
        "OPTMSE22"
    )

    optmse2022
end

# Confident limits  97.5%
InflationOptimalMSE2022_ci = DataFrame(
    period = ["Base 2000", "Transición 2000-2010", "Base 2010"],
    evalperiod = [GT_EVAL_B00, GT_EVAL_T0010, EvalPeriod(Date(2011, 12), Date(2022, 12), "upd20")],
    inf_limit = Float32[-0.8578267216682434, -0.33864724040031435, -0.47227502465248106],
    sup_limit = Float32[1.1448965072631836, 1.7413304984569544, 0.6401736915111531]
)

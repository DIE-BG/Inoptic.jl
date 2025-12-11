# Function of linear combination optimal MSE 2021


# Define Core MAI functions with different parameters. Calibrated with data up to 2018
InflationOptimalMaiMSE2021 = let
    # Components of core MAI
    maifns = [
        InflationCoreMaiFG(GTDATA_CALIB_2021, 0:(1 / 4):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 4):1),
        InflationCoreMaiFG(GTDATA_CALIB_2021, 0:(1 / 5):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 5):1),
        InflationCoreMaiFG(GTDATA_CALIB_2021, 0:(1 / 10):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 10):1),
        InflationCoreMaiFG(GTDATA_CALIB_2021, 0:(1 / 20):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 20):1),
        InflationCoreMaiFG(GTDATA_CALIB_2021, 0:(1 / 40):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 40):1),

    ]

    # MAI weights
    mai_weights = Float32[0.79742682, 0.11082839, -0.29522967, -0.03742725, 0.23941688, -0.024653632, -0.08466123, 0.049339466, 0.16632006, 0.050283819]

    # Optimal Core MAI by MSE method
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima MSE"
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFXMSE2021 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [29, 31, 116, 39, 46, 40, 30, 35, 186, 47, 197, 41, 22, 48, 185, 34, 184],
        [],
        [],
    )
)

# Define optimal combination MSE 2021.
InflationOptimalMSE2021 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(72),
        InflationPercentileWeighted(70),
        InflationTrimmedMeanEq(57.5, 84),
        InflationTrimmedMeanWeighted(15, 97),
        InflationDynamicExclusion(0.3222, 1.7283),
        InflationOptimalFXMSE2021,
        InflationOptimalMaiMSE2021,
    ]

    # Weights of others components
    mse_weights = Float32[
        -0.32378256,
        0.010275449,
        1.0546468,
        -0.13903011,
        -0.080038212,
        0.28515562,
        0.1902813,
    ]

    # Optimal core MSE v2021
    optmse2021 = CombinationFunction(
        components...,
        mse_weights,
        "Subyacente óptima MSE 2021"
    )

    optmse2021
end

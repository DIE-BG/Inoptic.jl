# Function of linear combinationMSE 2023
const GTDATA_CALIB_2023 = dataLastCalibrationBefore2023(Date(2019, 12))

# Define optimal Core MAI, calibrated with data until 2019
InflationOptimalMaiMSE2023 = let
    # Components of MAI
    maifns = [
        InflationCoreMai(MaiFP([0.0, 0.276032, 0.718878, 0.757874, 1.0])),
        InflationCoreMai(MaiF([0.0, 0.382601, 0.667259, 0.82893, 1.0])),
        InflationCoreMai(MaiG([0.0, 0.0588968, 0.271835, 0.742957, 0.771684, 1.0])),
    ]

    # MAI weights
    mai_weights = Float32[0.6961922, 0.30380744, 2.80714f-7]

    # Optimal Core MAI by method MSE
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima MSE 2023",
        "MAIOPTMSE23",
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFXMSE2023 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [29, 116, 31, 46, 39, 40, 186, 30, 35, 185, 197, 34, 48, 184],
        [46, 60, 61, 63:69..., 71, 72, 75, 77, 79, 80, 195, 307, 308, 328],
        [45, 59, 60, 62:68..., 70, 71, 74, 76, 78, 79, 194, 306, 307, 327],
    )
)

# Define optimal combination MSE 2023, optimized with componentes until 2019
# and adjusted weights  with data until  2021.
InflationOptimalMSE2023 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(0.7195656f0),
        InflationPercentileWeighted(0.69855756f0),
        InflationTrimmedMeanEq(57.0f0, 84.0f0),
        InflationTrimmedMeanWeighted(20.5129f0, 95.9781f0),
        InflationDynamicExclusion(0.3372f0, 1.8109f0),
        InflationOptimalFXMSE2023,
        InflationOptimalMaiMSE2023,
    ]

    # Weights of others components
    mse_weights = Float32[
        0.18779181,
        0.16040404,
        0.34152448,
        7.9775293f-7,
        0.0127981575,
        0,
        0.29748073,
    ]

    # Optimal core MSE v2023
    optmse2023 = CombinationFunction(
        components...,
        mse_weights,
        "Subyacente óptima MSE 2023",
        "OPTMSE23"
    )

    optmse2023
end

# Confident limits  97.5%
InflationOptimalMSE2023_ci = DataFrame(
    period = ["Base 2000", "Transición 2000-2010", "Base 2010"],
    evalperiod = [GT_EVAL_B00, GT_EVAL_T0010, EvalPeriod(Date(2011, 12), Date(2023, 12), "upd23")],
    inf_limit = Float32[-0.860575, -0.486195, -0.429135],
    sup_limit = Float32[1.01294, 0.646076, 0.423223]
)

@info "Definition of optimal functions MSE" InflationOptimalMaiMSE2023 InflationOptimalFXMSE2023 InflationOptimalMSE2023 InflationOptimalMSE2023_ci

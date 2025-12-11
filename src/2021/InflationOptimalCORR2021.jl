# Function of linear combination optimal CORR 2021

# Define core MAI functions with different parameters
InflationOptimalMaiCORR2021 = let
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

    # Weightes for the MAI functions
    mai_weights = Float32[0.39292914, 0.0010296146, -0.12367518, -0.020025676, 0.089189611, -0.00080909702, -0.021402787, 0.020015646, 0.081670269, 0.012343562]

    # Optimal Core MAI by CORR method
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima CORR"
    )

    optmai
end

#Define fixed exclusion function for CORR 2021
InflationOptimalFXCORR2021 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [29, 31, 116, 39, 46, 40, 30, 35, 186, 47, 197, 41, 22, 48, 185, 34, 184],
        [],
        [],
    )
)

# Define optimal combination CORR 2021.
InflationOptimalCORR2021 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(80),
        InflationPercentileWeighted(80),
        InflationTrimmedMeanEq(57.5, 92),
        InflationTrimmedMeanWeighted(52.5, 97),
        InflationDynamicExclusion(0.359, 2.5004),
        InflationOptimalFXCORR2021,
        InflationOptimalMaiCORR2021,
    ]

    # Weights of others components
    corr_weights = Float32[
        0.11271564,
        2.3623791e-6,
        0.15484397,
        1.1524639e-5,
        3.9541479e-8,
        0.1596709,
        0.57275558,
    ]

    # Optimal core CORR v2021
    optcorr2021 = CombinationFunction(
        components...,
        corr_weights,
        "Subyacente óptima CORR 2021"
    )

    optcorr2021
end

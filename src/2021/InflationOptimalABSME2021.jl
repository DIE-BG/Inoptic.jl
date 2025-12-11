# Function of linear combination optimal ABSME 2021

const GTDATA_CALIB_2021 = dataLastCalibrationBefore2023(Date(2018, 12))
# Define Core MAI functions with different parameters
InflationOptimalMaiABSME2021 = let

    maifns = [
        InflationCoreMaiF(GTDATA_CALIB_2021, 0:(1 / 4):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 4):1),
        InflationCoreMaiF(GTDATA_CALIB_2021, 0:(1 / 5):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 5):1),
        InflationCoreMaiF(GTDATA_CALIB_2021, 0:(1 / 10):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 10):1),
        InflationCoreMaiF(GTDATA_CALIB_2021, 0:(1 / 20):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 20):1),
        InflationCoreMaiF(GTDATA_CALIB_2021, 0:(1 / 40):1),
        InflationCoreMaiG(GTDATA_CALIB_2021, 0:(1 / 40):1),

    ]

    # Weights for the MAI functions
    mai_weights = Float32[0.11448115, 0.10647138, 0.10958032, 0.098436758, 0.096933529, 0.091687977, 0.099304229, 0.0911384, 0.099669911, 0.092296347]

    # Optimal Core MAI by ABSME method

    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima ABSME"
    )
    optmai
end

# Define fixed exclusion function for ABSME 2021

InflationOptimalFXABSME2021 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159, 193, 161],
        [29, 31, 116, 39, 46, 40, 30, 35, 186, 47, 197, 41, 22, 48, 185, 34, 184],
        [],
        [],
    )
)

# Define optimal combination function for ABSME 2021
InflationOptimalABSME2021 = let
    # Components of core inflation
    components = [
        InflationPercentileEq(72),
        InflationPercentileWeighted(70),
        InflationTrimmedMeanEq(42.5, 91),
        InflationTrimmedMeanWeighted(52.5, 85),
        InflationDynamicExclusion(0.3524, 1.8829),
        InflationOptimalFXABSME2021,
        InflationOptimalMaiABSME2021,
    ]

    # Weights of other components
    absme_weights = Float32[
        0.029440723,
        0.026790924,
        0.13497497,
        0.51598936,
        0.14337616,
        0.0071561225,
        0.14227174,
    ]

    # Optimal core ABSME v2021
    optabsme2021 = CombinationFunction(
        components...,
        absme_weights,
        "Subyacente óptima ABSME 2021"
    )

    optabsme2021
end

@info "Definition of optimal functions ABSME" InflationOptimalMaiABSME2021 InflationOptimalFXABSME2021 InflationOptimalABSME2021

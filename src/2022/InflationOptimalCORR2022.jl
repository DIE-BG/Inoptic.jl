# Function linear combination optimal CORR 2022


# Define optimal Core MAI, calibrated with data until 2018
InflationOptimalMaiCORR2022 = let
    # Components of MAI
    maifns = [
        InflationCoreMaiG(GTDATA_CALIB_2022, [0.0, 0.3231946132649845, 0.7717202163095981, 1.0]),
        InflationCoreMaiF(GTDATA_CALIB_2022, [0.0, 0.3353888879842171, 0.6564704398723811, 0.7811211272248946, 0.8605862966662162, 1.0]),
        InflationCoreMaiFG(GTDATA_CALIB_2022, [0.0, 0.3184050564725187, 0.6564814400376782, 0.7772641818257944, 0.871023576880708, 1.0]),
    ]

    # MAI weights
    mai_weights = Float32[0.0058168247, 0.434901, 0.5593101]

    # Optimal Core MAI by method CORR
    optmai = CombinationFunction(
        maifns...,
        mai_weights,
        "MAI óptima CORR 2022"
    )

    optmai
end

# Define fixed exclusion function
InflationOptimalFixedExclusionCORR2022 = InflationFixedExclusionCPI{4}(
    (
        [35, 30, 190, 36, 37, 40, 31, 104, 162, 32, 33, 159],
        [
            29, 116, 31, 46, 39, 40, 186, 30, 35, 185, 197, 34,
            48, 184, 41, 47, 37, 22, 25, 229, 38, 32, 274, 3,
            45, 44, 33, 237, 19, 10, 24, 275, 115, 15, 59, 42,
            61, 43, 113, 49, 27, 71, 23, 268, 9, 36, 236, 78,
            20, 213, 273, 26,
        ],
        [],
        [],
    )
)

# Define optimal combination CORR 2022, optimized with componentes until 2018
# and adjusted weights  with data until  2020.

"""
    InflationOptimalCORR2022 <: CombinationFunction

Core inflation measure, optimal linear combination
based on the CORR methodology for the 2022 edition.

"""
InflationOptimalCORR2022 = let
    # Core Inflations components
    components = [
        InflationPercentileEq(0.7725222f0),
        InflationPercentileWeighted(0.809557f0),
        InflationTrimmedMeanEq(55.90512f0, 92.17767f0),
        InflationTrimmedMeanWeighted(46.443233f0, 98.54608f0),
        InflationDynamicExclusion(0.4683226f0, 4.9745145f0),
        InflationOptimalFixedExclusionCORR2022,
        InflationOptimalMaiCORR2022,
    ]

    # Weights of others components
    corr_weights = Float32[
        0.19322012,
        3.930421f-5,
        0.46787307,
        0.0,
        0.0019428643,
        0.0,
        0.3369246,
    ]

    # Optimal core CORR v2022
    optcorr2022 = CombinationFunction(
        components...,
        corr_weights,
        "Optimal CORR Linear Combination  (2022 Edition)"
    )

    optcorr2022
end

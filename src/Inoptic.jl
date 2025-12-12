"""
    Inoptic.jl 
A Julia package to save, load the optimal inflation measures
based on the methodologies developed by the DIE-BG research group.
"""
module Inoptic

using InflationFunctions
using InflationEvalTools
using CPIDataBase
using CPIDataGT

using DataFrames
set_language!(:english)

include("helpers.jl")
CPIDataGT.load_data()

## Optimal functions for 2021 edition -------------------------------
# Load GT data for last calibration 2021 version
const GTDATA_CALIB_2021 = dataCalibration(Date(2018, 12))

export InflationOptimalABSME2021, InflationOptimalFXABSME2021, InflationOptimalMaiABSME2021
include("2021/InflationOptimalABSME2021.jl")

export InflationOptimalCORR2021, InflationOptimalFXCORR2021, InflationOptimalMaiCORR2021
include("2021/InflationOptimalCORR2021.jl")

export InflationOptimalMSE2021, InflationOptimalFXMSE2021, InflationOptimalMaiMSE2021
include("2021/InflationOptimalMSE2021.jl")

@info "$(measure_name(InflationOptimalABSME2021)),
$(measure_name(InflationOptimalCORR2021)),
$(measure_name(InflationOptimalMSE2021))"

##  Optimal functions for 2022 edition----------------------------------

# Load GT data for last calibration 2022 version
const GTDATA_CALIB_2022 = dataCalibration(Date(2018, 12))
export InflationOptimalABSME2022, InflationOptimalFXABSME2022, InflationOptimalMaiABSME2022
include("2022/InflationOptimalABSME2022.jl")

export InflationOptimalCORR2022, InflationOptimalFXCORR2022, InflationOptimalMaiCORR2022
include("2022/InflationOptimalCORR2022.jl")

export InflationOptimalMSE2022, InflationOptimalFXMSE2022, InflationOptimalMaiMSE2022
include("2022/InflationOptimalMSE2022.jl")

@info "$(measure_name(InflationOptimalABSME2022)),
$(measure_name(InflationOptimalCORR2022)),
$(measure_name(InflationOptimalMSE2022))"

##  Optimal functions for 2023 edition----------------------------------

# Load GT data for last calibration 2023 version
const GTDATA_CALIB_2023 = dataCalibration(Date(2021, 12))
export InflationOptimalABSME2023, InflationOptimalFXABSME2023, InflationOptimalMaiABSME2023
include("2023/InflationOptimalABSME2023.jl")


export InflationOptimalCORR2023, InflationOptimalFXCORR2023, InflationOptimalMaiCORR2023
include("2023/InflationOptimalCORR2023.jl")

export InflationOptimalMSE2023, InflationOptimalFXMSE2023, InflationOptimalMaiMSE2023
include("2023/InflationOptimalMSE2023.jl")


@info "$(measure_name(InflationOptimalABSME2023)),
$(measure_name(InflationOptimalCORR2023)),
$(measure_name(InflationOptimalMSE2023))"

# Data useful for 2024 and 2026 editions
const GTDATA00 = UniformCountryStructure(GT00)

## Optimal functions for 2024 B edition----------------------------------

export InflationOptimalABSME2024_B, InflationOptimalFXABSME2024_B
include("2024/InflationOptimalABSME2024_B.jl")

export InflationOptimalCORR2024_B, InflationOptimalFXCORR2024_B
include("2024/InflationOptimalCORR2024_B.jl")

export InflationOptimalMSE2024_B, InflationOptimalFXMSE2024_B
include("2024/InflationOptimalMSE2024_B.jl")

@info "$(InflationOptimalABSME2024_B.name),
$(InflationOptimalCORR2024_B.name),
$(InflationOptimalMSE2024_B.name)"

##  Optimal functions for 2026 edition----------------------------------
# Load GT data for last calibration 2023 version
const GTDATA24_CALIB = dataCalibration(Date(2025, 10))
export InflationOptimalABSME2026, InflationOptimalFXABSME2026
include("2026/InflationOptimalABSME2026.jl")

export InflationOptimalCORR2026, InflationOptimalFXCORR2026
include("2026/InflationOptimalCORR2026.jl")

export InflationOptimalRMSE2026, InflationOptimalFXMSE2026
include("2026/InflationOptimalRMSE2026.jl")


@info "$(InflationOptimalABSME2026.name),
$(InflationOptimalCORR2026.name),
$(InflationOptimalRMSE2026.name)"

end

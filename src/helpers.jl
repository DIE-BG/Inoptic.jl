#----------------------------------
# Script with some helper functions
#----------------------------------

function periodsCalibration(initialDate::Date, lastDate::Date)
    years_diff = year(lastDate) - year(initialDate)
    months_diff = month(lastDate) - month(initialDate)
    return years_diff * 12 + months_diff + 1
end


function dataCalibration(lastDate::Date)
    initialDate = lastDate > Date(2023, 12) ? Date(2025, 1) : Date(2011, 1)
    periods_calib = periodsCalibration(initialDate, lastDate)

    data = lastDate > Date(2023, 12) ? GT24 : GT10

    GT_LAST_CALIB = VarCPIBase(
        data.v[1:periods_calib, :],
        data.w,
        initialDate:Month(1):lastDate,
        data.baseindex,
    )

    return GTDATACALIBRATION = if lastDate > Date(2023, 12)
        MixedCountryStructure(
            GT00,
            GT10,
            GT23,
            GT_LAST_CALIB,
        )
    else
        UniformCountryStructure(
            GT00,
            GT_LAST_CALIB,
        )
    end

end

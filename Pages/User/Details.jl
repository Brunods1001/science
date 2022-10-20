module Details

using Stipple
using StippleUI

function get_user_name()
    "Bruno"
end

function get_user_age()
    "28"
end

function get_user_country()
    "USA"
end

function get_user_weight()
    "200lbs"
end

@reactive! mutable struct Model <: ReactiveModel
    name::R{String} = get_user_name()
    age::R{String} = get_user_age()
    country::R{String} = get_user_country()
    weight::R{String} = get_user_weight()
end


function handlers(model)
    model
end

end

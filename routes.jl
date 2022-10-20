using Genie
using Stipple
using StippleUI
using StipplePlotly

using Stipple.Pages
using Stipple.ModelStorage.Sessions

include("Pages/User/Details.jl")

if Genie.Configuration.isprod()
  Genie.Assets.assets_config!([Genie, Stipple, StippleUI, StipplePlotly], host = "https://cdn.statically.io/gh/GenieFramework")
end

Page("/", view = "Pages/User/views/details.jl.html",
          layout = "layouts/page.jl.html",
          model = () -> init_from_storage(Details.Model, debounce = 30) |> Details.handlers,
          context = @__MODULE__)


using Science
include("src/Science.jl")
using .Science
using Science.ResourceUsersController

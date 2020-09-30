"""
module FymEnvs

`FymEnvs` is developed by research project `NRF`
of `FDCL` (fligth dynamics and control laboratory)
in `SNU` (seoul national university).

The origin version of this package, `Fym`, has been developed in `Python`.
This is a Julia version of the `Fym`.

In this module,
some parts follows the convention of `Fym` e.g., `BaseEnv` and `BaseSystem`.
"""
module FymEnvs

using Reexport

# to avoid conflict; same name functions in FymCore and FymLogging
function close! end
function record end

include("FymCore.jl")
include("FymLogging.jl")

@reexport using .FymCore
@reexport using .FymLogging


end

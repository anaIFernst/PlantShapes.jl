# In development. More shapes will be included and new functions.

# Functions that compute dimensions from area and area from dimensios for different geometries
using Unitful
import Unitful: m, mm, cm
## Ellipse ##

# Compute ellipse area from dimensions
DimAreaEllipse(height::T, width::T) where {T <: Real} = π*height*width/4
DimAreaEllipse(height::T, width::T) where {T <: Quantity} = π*height*width/4 # Unitful version

# Compute length and width from ellipse area assuming specific aspect ratio (width/length)
function AreaDimEllipse(area::T, ar::T = (0.06/0.85)) where {T <: Real}
    length = sqrt(4*area/(π*ar))
    height = ar*length
    return (length = length, height = height)
end
function AreaDimEllipse(area::T, ar::W = (0.06/0.85)) where {T <: Quantity, W <: Real} # Unitful version
    length = sqrt(4*area/(π*ar))
    height = ar*length
    return (length = length, height = height)
end

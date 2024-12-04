
# Functions that compute dimensions from area and area from dimensios for different geometries

## Ellipse ##

# Compute ellipse area from dimensions
DimAreaEllipse(length, width) = π*length*width
# Compute length and width from ellipse area assuming specific aspect ratio (width/length)
function AreaDimEllipse(area, ar = (0.06/0.85)) 
    length = sqrt(area/(π*ar))
    width = ar*length
    return (length = length, width = width)
end

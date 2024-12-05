using Test, Unitful
import PlantShapes
import Unitful: m, mm, cm
PS = PlantShapes

#let 

    # Without units
    height_r = 1.0
    width_r = 0.5
    ar = 0.5/1.0
    # With units
    length_u = 1.0m
    width_u = 0.5m
    
    area_r = PS.DimAreaEllipse(length_r, width_r)
    area_u = PS.DimAreaEllipse(length_u, width_u)
    @test area_r ≈ ustrip(area_u)
    
    length_rq, width_rq = PS.AreaDimEllipse(area_r, ar)
    @test length_r == length_rq
    length_uq, width_uq = PS.AreaDimEllipse(area_u, ar)














#end
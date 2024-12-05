using Test, Unitful
import PlantShapes
import Unitful: m, mm, cm


#let 

    # Without units
    length_r = 1.0
    width_r = 0.5
    ar = 1.0/0.5
    # With units
    length_u = 1.0m
    width_u = 0.5m
    
    area_r = DimAreaEllipse(length_r, width_r)
    area_u = DimAreaEllipse(length_u, width_u)
    @test area_r ≈ ustrip(area_u)
    
    length_rq, width_rq = AreaDimEllipse(area_r, ar)
    















#end
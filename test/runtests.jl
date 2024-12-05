using PlantShapes
using Test

@testset "PlantShapes.jl" begin

    # Aqua
    @testset "Aqua" begin
        Aqua.test_all(PlantShapes, ambiguities = false, project_extras = false)
        Aqua.test_ambiguities([PlantShapes])
    end

    #Unit tests
    include("test/test_GeometricShapes.jl")
    # Write your tests here.
end

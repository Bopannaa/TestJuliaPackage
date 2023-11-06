using TestJuliaPackage
using Documenter

DocMeta.setdocmeta!(TestJuliaPackage, :DocTestSetup, :(using TestJuliaPackage); recursive=true)

makedocs(;
    modules=[TestJuliaPackage],
    authors="Bopanna",
    repo="https://github.com/Bopanna/TestJuliaPackage.jl/blob/{commit}{path}#{line}",
    sitename="TestJuliaPackage.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Bopanna.github.io/TestJuliaPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Bopanna/TestJuliaPackage.jl",
    devbranch="main",
)

using Inoptic
using Documenter

DocMeta.setdocmeta!(Inoptic, :DocTestSetup, :(using Inoptic); recursive=true)

makedocs(;
    modules=[Inoptic],
    authors="DIE-BG contributors",
    sitename="Inoptic.jl",
    format=Documenter.HTML(;
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

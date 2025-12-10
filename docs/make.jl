using Inoptic
using Documenter

DocMeta.setdocmeta!(Inoptic, :DocTestSetup, :(using Inoptic); recursive = true)

makedocs(;
    modules = [Inoptic],
    authors = "DIE-BG contributors",
    repo = "https://github.com/DIE-BG/Inoptic.jl/blob/{commit}{path}#{line}",
    sitename = "Inoptic.jl",
    format = Documenter.HTML(;
        edit_link = "main",
        prettyurls = get(ENV, "CI", "false") == "true",
        canonical = "https://die-bg.github.io/Inoptic.jl",
        assets = ["assets/logo.ico"],
    ),
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo = "github.com/DIE-BG/Inoptic.jl",
    devbranch = "main",
)

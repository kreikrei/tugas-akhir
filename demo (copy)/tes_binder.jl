### A Pluto.jl notebook ###
# v0.19.8

using Markdown
using InteractiveUtils

# ╔═╡ c59007f6-e68b-11ec-18e2-d3c79398b82a
begin
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.Registry.add(
		Pkg.RegistrySpec(url = "https://github.com/kreikrei/Registry.git")
	)
	Pkg.add("Nexus")
	Pkg.add("JuMP")
	Pkg.add("DataFrames")
	Pkg.add("CSV")
	Pkg.add("Distances")
	Pkg.add("GraphViz")
	using Nexus, JuMP, DataFrames, CSV, Distances, GraphViz
end

# ╔═╡ bb87c9f1-943e-4782-b672-0020a505a773
Nexus.Graph{Int}()

# ╔═╡ Cell order:
# ╠═c59007f6-e68b-11ec-18e2-d3c79398b82a
# ╠═bb87c9f1-943e-4782-b672-0020a505a773

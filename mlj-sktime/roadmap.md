# Road map

February 2020; updated, May 2021

Please visit [contributing guidelines](CONTRIBUTING.md) if interested
in contributing to MLJ.

### Guiding goals
-   **implements sktime api in mlj**
-   in phase 1 it includes:
    -   empty interface in mlj - usage similar as outlierdetectjon.jl with mlj
    -   fit of naive model
    -   predict for naive model

-   **Usability, interoperability, extensibility, reproducibility,**
	and **code transparency**.

-   Offer state-of-art tools for model **composition** and model
	**optimization** (hyper-parameter tuning)

-   Avoid common **pain-points** of other frameworks:

	-   identifying all models that solve a given task

	-   routine operations requiring a lot of code

	-   passage from data source to algorithm-specific data format

	-   probabilistic predictions: inconsistent representations, lack
		of options for performance evaluation

-   Add some focus to julia machine learning software development more
	generally

### Priorities

Priorities are somewhat fluid, depending on funding offers and
available talent. Rough priorities for the core development team at
present are marked with **†** below. However, we are always keen to
review external contributions in any area.

## Future enhancements

The following road map is more big-picture; see also [this
list](https://github.com/alan-turing-institute/MLJ.jl/issues/673).
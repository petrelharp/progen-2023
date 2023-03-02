# Outline

General layout: landscape A1, divided into six boxes; title in top-middle

Target audience: people who might want to do things with tree sequences in python

Proposed collaboration structure:
each box is a jupyter notebook that I put in latex at the last moment

# Title box

- tskit logo
- very brief intro/description statement
- what's on the website
- emphasize that (a) it does stuff fast and quick, and (b) it gives us a time dimension
    * tagline: "launching your genomes into the time dimension"?
- how to contribute
- bigger ecosystem: what else uses tskit?

# Visualization

pretty and useful things

# Metadata

top-level metadata for all your recording needs

# Interfaces and Interoperability

e.g., "find the trees with at least five nodes above time 100" or "compute the average number of siblings of <something something>"

* C, Rust, Python interfaces (also R via reticulate?)
* In-browser e.g. via pyodide/Jupyterlite - ideal for workshops/teaching!
* SLiM fwdpy11, msprime, tsinfer, ?relate
* Is an ARG library
* VCF output

# statistics, descriptors

pi-along-the-genome, IBD blocks; cross-coalescent rates?

# Notable new features

* Efficient array access (e.g. for numba)
* Tree metrics (balance/imbalance)
* Reference sequence and alignments
* Structural ops (e.g. decapitate)
* Parallelization?

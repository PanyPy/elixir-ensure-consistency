# EnsureConsistency
A ready-to-use and reference Elixir project template for code consistency, quality, and security.
This template brings together Elixir tools and best practices for ensuring your codebase remains clean, consistent, and maintainable — before you even start writing application logic.

It includes:
- Code formatting via mix format.
- Linting & style checks with Credo.
- Static type analysis using Dialyzer.
- Test coverage reports with ExCoveralls.
- Documentation with ExDoc.
- Security auditing via Sobelow.
- Dependency vulnerability check using mix hex.audit.


## Getting Started

Clone this repository  if you want to give it a try:
```bash
git clone git@github.com:PanyPy/elixir-ensure-consistency.git
cd my_app
mix deps.get
```

## Run All Consistency Checks

Run all quality and consistency checks in one go:
```bash
MIX_ENV=ci mix ensure_consistency
```

## Learn More

This project was inspired by concepts from [Adopting Elixir](https://www.google.com.py/books/edition/Adopting_Elixir/aspYEQAAQBAJ) and aims to provide a practical foundation for building maintainable Elixir systems from day one.

For more details, see the full article: [Ensuring Code Consistency with Elixir](https://medium.com/@jersonpaniagua/ensuring-code-consistency-c687695f7aaf)




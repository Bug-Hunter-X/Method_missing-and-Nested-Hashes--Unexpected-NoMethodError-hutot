# Ruby method_missing and Nested Hashes: Unexpected NoMethodError

This repository demonstrates a subtle bug related to Ruby's `method_missing` and how it interacts with nested hash structures.  The `method_missing` implementation is designed to dynamically access attributes from a hash. However, if the requested attribute is not present, it unexpectedly raises a `NoMethodError` instead of handling the missing attribute gracefully.

The `bug.rb` file showcases the problematic code. The solution is provided in `bugSolution.rb`.
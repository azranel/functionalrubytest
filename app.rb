require 'pry'
require 'functional'
require 'benchmark/ips'
require './pattern_matching'
require './memoization'
require './protocols'
require './records'
require './final_vars'

# Additionally:
# * Delay - Lazy evaluation of a block yielding an immutable result. Useful for
#           expensive operations that may never be needed.
# * Option - An optional value that may be none (no value) or some (a value).
#            This type is a replacement for the use of nil with better type checks.
# * TypeCheck - As name says, it checks if object is one of types
# * FinalStruct - A variation on Ruby's `OpenStruct` in which all fields are "final" (meaning
#                 that new fields can be arbitrarily added to a `FinalStruct` object but once
#                 set each field becomes immutable).
# * Tuple - A tuple is a pure functional data strcture that is similar to an array but is
#           immutable and of fixed length.
#
# And some more...

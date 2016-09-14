class Fibonacci
  include Functional::PatternMatching

  defn(:calc, 0) do
    0
  end

  defn(:calc, 1) do
    1
  end

  defn(:calc, _) do |n|
    calc(n - 1) + calc(n - 2)
  end

  def oo_calc(n)
    if n == 0
      0
    elsif n == 1
      1
    else
      oo_calc(n - 1) + oo_calc(n - 2)
    end
  end
end

Benchmark.ips do |b|
  b.report("fp Fibonacci") { Fibonacci.new.calc(20) }
  b.report("oo Fibonacci") { Fibonacci.new.oo_calc(20) }
  b.compare!
end


## Summary
# Functional ruby is slow :(

# ❯ ruby app.rb
# Warming up --------------------------------------
#         fp Fibonacci     1.000  i/100ms
#         oo Fibonacci    76.000  i/100ms
# Calculating -------------------------------------
#         fp Fibonacci      7.469  (± 0.0%) i/s -     38.000  in   5.094790s
#         oo Fibonacci    759.718  (± 3.9%) i/s -      3.800k in   5.009746s
#
# Comparison:
#         oo Fibonacci:      759.7 i/s
#         fp Fibonacci:        7.5 i/s - 101.72x  slower

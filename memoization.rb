class MemoizationFibb
  include Functional::Memo

  def self.calc_fib(n)
    if n == 0
      0
    elsif n == 1
      1
    else
      calc_fib(n - 1) + calc_fib(n - 2)
    end
  end

  def self.calc_fib_without_memo(n)
    if n == 0
      0
    elsif n == 1
      1
    else
      calc_fib(n - 1) + calc_fib(n - 2)
    end
  end

  memoize(:calc_fib)
end

FIB_NUMBER = 200

Benchmark.ips do |b|
  b.report("with memo Fibonacci") { MemoizationFibb.calc_fib(FIB_NUMBER) }
  b.report("without memo Fibonacci") { MemoizationFibb.calc_fib_without_memo(FIB_NUMBER) }
  b.compare!
end

## Benchmark Summary
# ❯ ruby app.rb
# Warming up --------------------------------------
#  with memo Fibonacci    42.309k i/100ms
# without memo Fibonacci
#                         21.594k i/100ms
# Calculating -------------------------------------
#  with memo Fibonacci    490.150k (± 3.7%) i/s -      2.454M in   5.013483s
# without memo Fibonacci
#                         234.037k (± 3.5%) i/s -      1.188M in   5.080734s
#
# Comparison:
#  with memo Fibonacci:   490150.0 i/s
# without memo Fibonacci:   234037.3 i/s - 2.09x  slower

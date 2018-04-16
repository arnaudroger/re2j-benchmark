# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testCombine

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Warmup Iteration   1: 5055.670 ops/s
# Warmup Iteration   2: 5365.392 ops/s
# Warmup Iteration   3: 5277.647 ops/s
# Warmup Iteration   4: 5357.901 ops/s
# Warmup Iteration   5: 5334.147 ops/s
# Warmup Iteration   6: 5435.141 ops/s
# Warmup Iteration   7: 5427.988 ops/s
# Warmup Iteration   8: 5383.201 ops/s
# Warmup Iteration   9: 5409.533 ops/s
# Warmup Iteration  10: 5380.415 ops/s
# Warmup Iteration  11: 5426.875 ops/s
# Warmup Iteration  12: 5425.451 ops/s
# Warmup Iteration  13: 5389.178 ops/s
# Warmup Iteration  14: 5406.940 ops/s
# Warmup Iteration  15: 5354.565 ops/s
# Warmup Iteration  16: 5374.764 ops/s
# Warmup Iteration  17: 5429.631 ops/s
# Warmup Iteration  18: 5394.651 ops/s
# Warmup Iteration  19: 5398.256 ops/s
# Warmup Iteration  20: 5268.230 ops/s
Iteration   1: 5414.921 ops/s
Iteration   2: 5429.039 ops/s
Iteration   3: 5403.148 ops/s
Iteration   4: 5419.707 ops/s
Iteration   5: 5379.951 ops/s
Iteration   6: 5430.825 ops/s
Iteration   7: 5420.684 ops/s
Iteration   8: 5432.709 ops/s
Iteration   9: 5410.358 ops/s
Iteration  10: 5389.260 ops/s
Iteration  11: 5428.887 ops/s
Iteration  12: 5420.148 ops/s
Iteration  13: 5425.896 ops/s
Iteration  14: 5410.829 ops/s
Iteration  15: 5382.335 ops/s
Iteration  16: 5422.732 ops/s
Iteration  17: 5419.536 ops/s
Iteration  18: 5393.655 ops/s
Iteration  19: 5418.701 ops/s
Iteration  20: 5294.852 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5407.409 ±(99.9%) 26.819 ops/s [Average]
  (min, avg, max) = (5294.852, 5407.409, 5432.709), stdev = 30.885
  CI (99.9%): [5380.590, 5434.228] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5407.409 ± 26.819  ops/s

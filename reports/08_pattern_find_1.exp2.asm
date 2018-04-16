# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp2

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Warmup Iteration   1: 11957.370 ops/s
# Warmup Iteration   2: 12385.518 ops/s
# Warmup Iteration   3: 12499.458 ops/s
# Warmup Iteration   4: 12418.235 ops/s
# Warmup Iteration   5: 12557.484 ops/s
# Warmup Iteration   6: 12402.323 ops/s
# Warmup Iteration   7: 10191.586 ops/s
# Warmup Iteration   8: 12517.970 ops/s
# Warmup Iteration   9: 12619.094 ops/s
# Warmup Iteration  10: 12559.216 ops/s
# Warmup Iteration  11: 12580.034 ops/s
# Warmup Iteration  12: 12218.765 ops/s
# Warmup Iteration  13: 12483.455 ops/s
# Warmup Iteration  14: 12465.899 ops/s
# Warmup Iteration  15: 12482.287 ops/s
# Warmup Iteration  16: 12409.641 ops/s
# Warmup Iteration  17: 12462.929 ops/s
# Warmup Iteration  18: 12567.760 ops/s
# Warmup Iteration  19: 12457.547 ops/s
# Warmup Iteration  20: 12546.136 ops/s
Iteration   1: 12484.971 ops/s
Iteration   2: 12402.983 ops/s
Iteration   3: 12509.059 ops/s
Iteration   4: 12445.653 ops/s
Iteration   5: 11870.832 ops/s
Iteration   6: 11844.730 ops/s
Iteration   7: 11768.244 ops/s
Iteration   8: 11871.113 ops/s
Iteration   9: 12235.964 ops/s
Iteration  10: 12318.915 ops/s
Iteration  11: 12268.049 ops/s
Iteration  12: 12247.139 ops/s
Iteration  13: 12297.933 ops/s
Iteration  14: 12333.479 ops/s
Iteration  15: 12321.337 ops/s
Iteration  16: 12238.531 ops/s
Iteration  17: 12243.830 ops/s
Iteration  18: 12342.773 ops/s
Iteration  19: 12342.084 ops/s
Iteration  20: 12326.001 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  12235.681 ±(99.9%) 189.645 ops/s [Average]
  (min, avg, max) = (11768.244, 12235.681, 12509.059), stdev = 218.395
  CI (99.9%): [12046.036, 12425.326] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  12235.681 ± 189.645  ops/s

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
# Warmup Iteration   1: 14188.393 ops/s
# Warmup Iteration   2: 14824.830 ops/s
# Warmup Iteration   3: 14821.875 ops/s
# Warmup Iteration   4: 15045.018 ops/s
# Warmup Iteration   5: 15017.990 ops/s
# Warmup Iteration   6: 14964.912 ops/s
# Warmup Iteration   7: 14907.346 ops/s
# Warmup Iteration   8: 14986.388 ops/s
# Warmup Iteration   9: 15076.516 ops/s
# Warmup Iteration  10: 15007.441 ops/s
# Warmup Iteration  11: 14985.883 ops/s
# Warmup Iteration  12: 14918.695 ops/s
# Warmup Iteration  13: 14949.419 ops/s
# Warmup Iteration  14: 14566.898 ops/s
# Warmup Iteration  15: 14561.414 ops/s
# Warmup Iteration  16: 14560.310 ops/s
# Warmup Iteration  17: 14883.702 ops/s
# Warmup Iteration  18: 14850.974 ops/s
# Warmup Iteration  19: 14911.377 ops/s
# Warmup Iteration  20: 14871.298 ops/s
Iteration   1: 14352.625 ops/s
Iteration   2: 14647.418 ops/s
Iteration   3: 14633.511 ops/s
Iteration   4: 14837.430 ops/s
Iteration   5: 15009.263 ops/s
Iteration   6: 14999.025 ops/s
Iteration   7: 14870.586 ops/s
Iteration   8: 14934.803 ops/s
Iteration   9: 14762.088 ops/s
Iteration  10: 14663.948 ops/s
Iteration  11: 14991.525 ops/s
Iteration  12: 14915.334 ops/s
Iteration  13: 14927.442 ops/s
Iteration  14: 15001.247 ops/s
Iteration  15: 15012.627 ops/s
Iteration  16: 14961.724 ops/s
Iteration  17: 14924.654 ops/s
Iteration  18: 14976.847 ops/s
Iteration  19: 14709.063 ops/s
Iteration  20: 14985.408 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  14855.828 ±(99.9%) 152.274 ops/s [Average]
  (min, avg, max) = (14352.625, 14855.828, 15012.627), stdev = 175.359
  CI (99.9%): [14703.555, 15008.102] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  14855.828 ± 152.274  ops/s

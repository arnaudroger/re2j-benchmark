# JMH version: 1.19
# VM version: JDK 1.8.0_131, VM 25.131-b11
# VM invoker: /usr/lib/jvm/java-8-oracle/jre/bin/java
# VM options: <none>
# Warmup: 20 iterations, 1 s each
# Measurement: 20 iterations, 1 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Throughput, ops/time
# Benchmark: com.github.arnaudroger.re2j.Re2jFindRegex.testExp1

# Run progress: 0.00% complete, ETA 00:00:40
# Fork: 1 of 1
# Warmup Iteration   1: 14277.791 ops/s
# Warmup Iteration   2: 15006.069 ops/s
# Warmup Iteration   3: 15118.778 ops/s
# Warmup Iteration   4: 14932.666 ops/s
# Warmup Iteration   5: 15239.843 ops/s
# Warmup Iteration   6: 15200.172 ops/s
# Warmup Iteration   7: 15169.928 ops/s
# Warmup Iteration   8: 15304.161 ops/s
# Warmup Iteration   9: 15175.951 ops/s
# Warmup Iteration  10: 15363.490 ops/s
# Warmup Iteration  11: 15079.946 ops/s
# Warmup Iteration  12: 15022.856 ops/s
# Warmup Iteration  13: 15090.418 ops/s
# Warmup Iteration  14: 15053.687 ops/s
# Warmup Iteration  15: 15183.775 ops/s
# Warmup Iteration  16: 15125.783 ops/s
# Warmup Iteration  17: 15386.696 ops/s
# Warmup Iteration  18: 14990.575 ops/s
# Warmup Iteration  19: 14914.396 ops/s
# Warmup Iteration  20: 15380.741 ops/s
Iteration   1: 15356.601 ops/s
Iteration   2: 15222.325 ops/s
Iteration   3: 15354.419 ops/s
Iteration   4: 15260.183 ops/s
Iteration   5: 15381.361 ops/s
Iteration   6: 15345.362 ops/s
Iteration   7: 15364.282 ops/s
Iteration   8: 15337.378 ops/s
Iteration   9: 15261.536 ops/s
Iteration  10: 15383.705 ops/s
Iteration  11: 15323.232 ops/s
Iteration  12: 15376.475 ops/s
Iteration  13: 15355.528 ops/s
Iteration  14: 15220.055 ops/s
Iteration  15: 15374.726 ops/s
Iteration  16: 15326.430 ops/s
Iteration  17: 15356.922 ops/s
Iteration  18: 15359.173 ops/s
Iteration  19: 15249.046 ops/s
Iteration  20: 15381.075 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  15329.491 ±(99.9%) 47.620 ops/s [Average]
  (min, avg, max) = (15220.055, 15329.491, 15383.705), stdev = 54.839
  CI (99.9%): [15281.871, 15377.110] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  15329.491 ± 47.620  ops/s

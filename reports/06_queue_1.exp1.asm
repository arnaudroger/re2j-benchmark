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
# Warmup Iteration   1: 11476.463 ops/s
# Warmup Iteration   2: 11727.683 ops/s
# Warmup Iteration   3: 11856.580 ops/s
# Warmup Iteration   4: 11789.048 ops/s
# Warmup Iteration   5: 11925.251 ops/s
# Warmup Iteration   6: 11847.317 ops/s
# Warmup Iteration   7: 11736.051 ops/s
# Warmup Iteration   8: 11943.921 ops/s
# Warmup Iteration   9: 11763.415 ops/s
# Warmup Iteration  10: 12022.142 ops/s
# Warmup Iteration  11: 11979.387 ops/s
# Warmup Iteration  12: 11876.540 ops/s
# Warmup Iteration  13: 11899.193 ops/s
# Warmup Iteration  14: 11825.145 ops/s
# Warmup Iteration  15: 11946.413 ops/s
# Warmup Iteration  16: 11978.365 ops/s
# Warmup Iteration  17: 11884.587 ops/s
# Warmup Iteration  18: 11855.124 ops/s
# Warmup Iteration  19: 11797.596 ops/s
# Warmup Iteration  20: 11875.047 ops/s
Iteration   1: 11881.934 ops/s
Iteration   2: 11859.607 ops/s
Iteration   3: 11833.575 ops/s
Iteration   4: 11712.251 ops/s
Iteration   5: 11889.064 ops/s
Iteration   6: 11874.045 ops/s
Iteration   7: 11876.878 ops/s
Iteration   8: 11867.567 ops/s
Iteration   9: 11792.076 ops/s
Iteration  10: 11852.325 ops/s
Iteration  11: 11849.029 ops/s
Iteration  12: 11863.264 ops/s
Iteration  13: 11867.723 ops/s
Iteration  14: 11754.033 ops/s
Iteration  15: 11887.110 ops/s
Iteration  16: 11860.574 ops/s
Iteration  17: 11860.300 ops/s
Iteration  18: 11851.792 ops/s
Iteration  19: 11699.407 ops/s
Iteration  20: 11843.297 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  11838.792 ±(99.9%) 48.127 ops/s [Average]
  (min, avg, max) = (11699.407, 11838.792, 11889.064), stdev = 55.423
  CI (99.9%): [11790.666, 11886.919] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  11838.792 ± 48.127  ops/s

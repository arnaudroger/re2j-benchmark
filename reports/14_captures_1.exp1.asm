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
# Warmup Iteration   1: 26554.713 ops/s
# Warmup Iteration   2: 28178.810 ops/s
# Warmup Iteration   3: 28342.747 ops/s
# Warmup Iteration   4: 28347.424 ops/s
# Warmup Iteration   5: 28271.217 ops/s
# Warmup Iteration   6: 28043.415 ops/s
# Warmup Iteration   7: 28358.083 ops/s
# Warmup Iteration   8: 28358.523 ops/s
# Warmup Iteration   9: 28340.526 ops/s
# Warmup Iteration  10: 28291.303 ops/s
# Warmup Iteration  11: 28063.512 ops/s
# Warmup Iteration  12: 28503.261 ops/s
# Warmup Iteration  13: 28436.028 ops/s
# Warmup Iteration  14: 28476.161 ops/s
# Warmup Iteration  15: 28462.184 ops/s
# Warmup Iteration  16: 28304.047 ops/s
# Warmup Iteration  17: 28360.498 ops/s
# Warmup Iteration  18: 28114.395 ops/s
# Warmup Iteration  19: 28072.720 ops/s
# Warmup Iteration  20: 28066.704 ops/s
Iteration   1: 27867.019 ops/s
Iteration   2: 28020.500 ops/s
Iteration   3: 28021.497 ops/s
Iteration   4: 27999.344 ops/s
Iteration   5: 27925.517 ops/s
Iteration   6: 27822.949 ops/s
Iteration   7: 28022.193 ops/s
Iteration   8: 28012.727 ops/s
Iteration   9: 27967.626 ops/s
Iteration  10: 28417.609 ops/s
Iteration  11: 28287.700 ops/s
Iteration  12: 28490.140 ops/s
Iteration  13: 28481.640 ops/s
Iteration  14: 28448.426 ops/s
Iteration  15: 28361.987 ops/s
Iteration  16: 28247.346 ops/s
Iteration  17: 28409.388 ops/s
Iteration  18: 28463.174 ops/s
Iteration  19: 28453.056 ops/s
Iteration  20: 28419.726 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  28206.978 ±(99.9%) 207.662 ops/s [Average]
  (min, avg, max) = (27822.949, 28206.978, 28490.140), stdev = 239.144
  CI (99.9%): [27999.316, 28414.640] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  28206.978 ± 207.662  ops/s

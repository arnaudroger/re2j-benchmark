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
# Warmup Iteration   1: 10669.015 ops/s
# Warmup Iteration   2: 10985.021 ops/s
# Warmup Iteration   3: 10994.302 ops/s
# Warmup Iteration   4: 11000.971 ops/s
# Warmup Iteration   5: 11034.669 ops/s
# Warmup Iteration   6: 10923.947 ops/s
# Warmup Iteration   7: 10964.786 ops/s
# Warmup Iteration   8: 11017.562 ops/s
# Warmup Iteration   9: 11002.239 ops/s
# Warmup Iteration  10: 10876.823 ops/s
# Warmup Iteration  11: 10932.875 ops/s
# Warmup Iteration  12: 10964.270 ops/s
# Warmup Iteration  13: 11098.062 ops/s
# Warmup Iteration  14: 11033.119 ops/s
# Warmup Iteration  15: 11039.774 ops/s
# Warmup Iteration  16: 11108.369 ops/s
# Warmup Iteration  17: 11061.297 ops/s
# Warmup Iteration  18: 11070.544 ops/s
# Warmup Iteration  19: 11004.021 ops/s
# Warmup Iteration  20: 11050.185 ops/s
Iteration   1: 11059.663 ops/s
Iteration   2: 10876.535 ops/s
Iteration   3: 11047.779 ops/s
Iteration   4: 11024.916 ops/s
Iteration   5: 10497.578 ops/s
Iteration   6: 11077.748 ops/s
Iteration   7: 11090.623 ops/s
Iteration   8: 11054.668 ops/s
Iteration   9: 11009.211 ops/s
Iteration  10: 11055.329 ops/s
Iteration  11: 10568.165 ops/s
Iteration  12: 11074.350 ops/s
Iteration  13: 11078.520 ops/s
Iteration  14: 11034.861 ops/s
Iteration  15: 11075.473 ops/s
Iteration  16: 11076.673 ops/s
Iteration  17: 11050.800 ops/s
Iteration  18: 11062.047 ops/s
Iteration  19: 11000.197 ops/s
Iteration  20: 11039.221 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  10992.718 ±(99.9%) 142.602 ops/s [Average]
  (min, avg, max) = (10497.578, 10992.718, 11090.623), stdev = 164.221
  CI (99.9%): [10850.116, 11135.320] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  10992.718 ± 142.602  ops/s

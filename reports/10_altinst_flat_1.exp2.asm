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
# Warmup Iteration   1: 14161.126 ops/s
# Warmup Iteration   2: 14894.626 ops/s
# Warmup Iteration   3: 14826.165 ops/s
# Warmup Iteration   4: 14941.350 ops/s
# Warmup Iteration   5: 14930.760 ops/s
# Warmup Iteration   6: 14878.607 ops/s
# Warmup Iteration   7: 14935.104 ops/s
# Warmup Iteration   8: 15011.411 ops/s
# Warmup Iteration   9: 14997.728 ops/s
# Warmup Iteration  10: 14978.543 ops/s
# Warmup Iteration  11: 15030.740 ops/s
# Warmup Iteration  12: 15029.088 ops/s
# Warmup Iteration  13: 15028.119 ops/s
# Warmup Iteration  14: 14139.736 ops/s
# Warmup Iteration  15: 14107.836 ops/s
# Warmup Iteration  16: 14060.488 ops/s
# Warmup Iteration  17: 14994.157 ops/s
# Warmup Iteration  18: 15004.834 ops/s
# Warmup Iteration  19: 14992.435 ops/s
# Warmup Iteration  20: 15015.064 ops/s
Iteration   1: 14954.585 ops/s
Iteration   2: 15050.018 ops/s
Iteration   3: 15030.605 ops/s
Iteration   4: 14948.705 ops/s
Iteration   5: 15042.148 ops/s
Iteration   6: 15017.240 ops/s
Iteration   7: 15016.085 ops/s
Iteration   8: 15004.701 ops/s
Iteration   9: 14926.402 ops/s
Iteration  10: 15008.402 ops/s
Iteration  11: 15018.841 ops/s
Iteration  12: 15014.986 ops/s
Iteration  13: 14997.401 ops/s
Iteration  14: 14912.703 ops/s
Iteration  15: 15025.258 ops/s
Iteration  16: 15002.952 ops/s
Iteration  17: 15024.931 ops/s
Iteration  18: 15003.176 ops/s
Iteration  19: 14897.300 ops/s
Iteration  20: 15022.183 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  14995.931 ±(99.9%) 37.886 ops/s [Average]
  (min, avg, max) = (14897.300, 14995.931, 15050.018), stdev = 43.630
  CI (99.9%): [14958.045, 15033.817] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  14995.931 ± 37.886  ops/s

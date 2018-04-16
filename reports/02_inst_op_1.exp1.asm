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
# Warmup Iteration   1: 6520.915 ops/s
# Warmup Iteration   2: 6895.719 ops/s
# Warmup Iteration   3: 6976.256 ops/s
# Warmup Iteration   4: 6867.628 ops/s
# Warmup Iteration   5: 6889.350 ops/s
# Warmup Iteration   6: 6883.403 ops/s
# Warmup Iteration   7: 6856.090 ops/s
# Warmup Iteration   8: 6982.521 ops/s
# Warmup Iteration   9: 6998.085 ops/s
# Warmup Iteration  10: 6991.807 ops/s
# Warmup Iteration  11: 6974.039 ops/s
# Warmup Iteration  12: 6953.503 ops/s
# Warmup Iteration  13: 7007.272 ops/s
# Warmup Iteration  14: 6947.406 ops/s
# Warmup Iteration  15: 6914.755 ops/s
# Warmup Iteration  16: 6900.066 ops/s
# Warmup Iteration  17: 6816.838 ops/s
# Warmup Iteration  18: 6942.684 ops/s
# Warmup Iteration  19: 6972.812 ops/s
# Warmup Iteration  20: 6973.886 ops/s
Iteration   1: 6938.592 ops/s
Iteration   2: 6778.906 ops/s
Iteration   3: 6940.144 ops/s
Iteration   4: 6937.842 ops/s
Iteration   5: 6956.660 ops/s
Iteration   6: 6944.004 ops/s
Iteration   7: 6904.463 ops/s
Iteration   8: 6941.060 ops/s
Iteration   9: 6961.385 ops/s
Iteration  10: 6662.884 ops/s
Iteration  11: 6942.600 ops/s
Iteration  12: 6905.201 ops/s
Iteration  13: 6955.254 ops/s
Iteration  14: 6942.360 ops/s
Iteration  15: 6959.373 ops/s
Iteration  16: 6939.876 ops/s
Iteration  17: 6896.323 ops/s
Iteration  18: 6924.623 ops/s
Iteration  19: 6960.956 ops/s
Iteration  20: 6946.790 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  6916.965 ±(99.9%) 62.559 ops/s [Average]
  (min, avg, max) = (6662.884, 6916.965, 6961.385), stdev = 72.043
  CI (99.9%): [6854.405, 6979.524] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  6916.965 ± 62.559  ops/s

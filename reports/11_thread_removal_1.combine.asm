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
# Warmup Iteration   1: 9502.668 ops/s
# Warmup Iteration   2: 9710.136 ops/s
# Warmup Iteration   3: 9988.797 ops/s
# Warmup Iteration   4: 9892.889 ops/s
# Warmup Iteration   5: 10005.538 ops/s
# Warmup Iteration   6: 9985.659 ops/s
# Warmup Iteration   7: 9934.858 ops/s
# Warmup Iteration   8: 9955.136 ops/s
# Warmup Iteration   9: 9934.490 ops/s
# Warmup Iteration  10: 9988.709 ops/s
# Warmup Iteration  11: 10016.811 ops/s
# Warmup Iteration  12: 9839.095 ops/s
# Warmup Iteration  13: 9891.135 ops/s
# Warmup Iteration  14: 9846.671 ops/s
# Warmup Iteration  15: 9920.398 ops/s
# Warmup Iteration  16: 9917.541 ops/s
# Warmup Iteration  17: 10062.412 ops/s
# Warmup Iteration  18: 10006.124 ops/s
# Warmup Iteration  19: 9973.009 ops/s
# Warmup Iteration  20: 10051.096 ops/s
Iteration   1: 10046.587 ops/s
Iteration   2: 10043.705 ops/s
Iteration   3: 10029.104 ops/s
Iteration   4: 9954.005 ops/s
Iteration   5: 10019.121 ops/s
Iteration   6: 10038.566 ops/s
Iteration   7: 10030.120 ops/s
Iteration   8: 10040.648 ops/s
Iteration   9: 9950.616 ops/s
Iteration  10: 10031.558 ops/s
Iteration  11: 10058.122 ops/s
Iteration  12: 10059.009 ops/s
Iteration  13: 10022.103 ops/s
Iteration  14: 9985.058 ops/s
Iteration  15: 10055.566 ops/s
Iteration  16: 9991.883 ops/s
Iteration  17: 10007.830 ops/s
Iteration  18: 9996.460 ops/s
Iteration  19: 9932.339 ops/s
Iteration  20: 10016.093 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  10015.425 ±(99.9%) 31.979 ops/s [Average]
  (min, avg, max) = (9932.339, 10015.425, 10059.009), stdev = 36.827
  CI (99.9%): [9983.446, 10047.403] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt      Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  10015.425 ± 31.979  ops/s

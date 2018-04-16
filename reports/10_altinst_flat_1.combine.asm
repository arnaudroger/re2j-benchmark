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
# Warmup Iteration   1: 4992.446 ops/s
# Warmup Iteration   2: 5324.382 ops/s
# Warmup Iteration   3: 5394.032 ops/s
# Warmup Iteration   4: 5418.350 ops/s
# Warmup Iteration   5: 5410.839 ops/s
# Warmup Iteration   6: 5420.164 ops/s
# Warmup Iteration   7: 5391.968 ops/s
# Warmup Iteration   8: 5413.045 ops/s
# Warmup Iteration   9: 5420.291 ops/s
# Warmup Iteration  10: 5405.796 ops/s
# Warmup Iteration  11: 5402.158 ops/s
# Warmup Iteration  12: 5341.460 ops/s
# Warmup Iteration  13: 5402.029 ops/s
# Warmup Iteration  14: 5376.380 ops/s
# Warmup Iteration  15: 5370.116 ops/s
# Warmup Iteration  16: 5410.284 ops/s
# Warmup Iteration  17: 5345.679 ops/s
# Warmup Iteration  18: 5401.994 ops/s
# Warmup Iteration  19: 5427.302 ops/s
# Warmup Iteration  20: 5422.443 ops/s
Iteration   1: 5419.741 ops/s
Iteration   2: 5377.348 ops/s
Iteration   3: 5429.240 ops/s
Iteration   4: 5426.160 ops/s
Iteration   5: 5424.955 ops/s
Iteration   6: 5420.475 ops/s
Iteration   7: 5377.927 ops/s
Iteration   8: 5405.563 ops/s
Iteration   9: 5426.259 ops/s
Iteration  10: 5431.588 ops/s
Iteration  11: 5415.253 ops/s
Iteration  12: 5385.921 ops/s
Iteration  13: 5425.237 ops/s
Iteration  14: 5418.445 ops/s
Iteration  15: 5429.788 ops/s
Iteration  16: 5407.889 ops/s
Iteration  17: 5388.820 ops/s
Iteration  18: 5423.147 ops/s
Iteration  19: 5427.792 ops/s
Iteration  20: 5423.121 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5414.233 ±(99.9%) 15.384 ops/s [Average]
  (min, avg, max) = (5377.348, 5414.233, 5431.588), stdev = 17.716
  CI (99.9%): [5398.850, 5429.617] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5414.233 ± 15.384  ops/s

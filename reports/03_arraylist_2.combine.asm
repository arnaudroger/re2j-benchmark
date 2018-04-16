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
# Warmup Iteration   1: 2378.425 ops/s
# Warmup Iteration   2: 2493.978 ops/s
# Warmup Iteration   3: 2504.046 ops/s
# Warmup Iteration   4: 2509.628 ops/s
# Warmup Iteration   5: 2500.904 ops/s
# Warmup Iteration   6: 2513.504 ops/s
# Warmup Iteration   7: 2531.383 ops/s
# Warmup Iteration   8: 2532.646 ops/s
# Warmup Iteration   9: 2532.245 ops/s
# Warmup Iteration  10: 2528.274 ops/s
# Warmup Iteration  11: 2512.868 ops/s
# Warmup Iteration  12: 2532.892 ops/s
# Warmup Iteration  13: 2530.622 ops/s
# Warmup Iteration  14: 2538.942 ops/s
# Warmup Iteration  15: 2535.792 ops/s
# Warmup Iteration  16: 2512.249 ops/s
# Warmup Iteration  17: 2539.257 ops/s
# Warmup Iteration  18: 2538.428 ops/s
# Warmup Iteration  19: 2541.376 ops/s
# Warmup Iteration  20: 2540.249 ops/s
Iteration   1: 2513.972 ops/s
Iteration   2: 2522.321 ops/s
Iteration   3: 2522.011 ops/s
Iteration   4: 2523.334 ops/s
Iteration   5: 2527.231 ops/s
Iteration   6: 2500.442 ops/s
Iteration   7: 2522.568 ops/s
Iteration   8: 2514.544 ops/s
Iteration   9: 2530.222 ops/s
Iteration  10: 2519.699 ops/s
Iteration  11: 2506.389 ops/s
Iteration  12: 2511.229 ops/s
Iteration  13: 2510.470 ops/s
Iteration  14: 2511.083 ops/s
Iteration  15: 2502.393 ops/s
Iteration  16: 2492.214 ops/s
Iteration  17: 2505.833 ops/s
Iteration  18: 2522.706 ops/s
Iteration  19: 2520.830 ops/s
Iteration  20: 2518.912 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  2514.920 ±(99.9%) 8.548 ops/s [Average]
  (min, avg, max) = (2492.214, 2514.920, 2530.222), stdev = 9.844
  CI (99.9%): [2506.372, 2523.468] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score   Error  Units
Re2jFindRegex.testCombine  thrpt   20  2514.920 ± 8.548  ops/s

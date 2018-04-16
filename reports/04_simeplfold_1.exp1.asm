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
# Warmup Iteration   1: 10145.243 ops/s
# Warmup Iteration   2: 10582.361 ops/s
# Warmup Iteration   3: 9762.457 ops/s
# Warmup Iteration   4: 9601.907 ops/s
# Warmup Iteration   5: 9665.986 ops/s
# Warmup Iteration   6: 10422.220 ops/s
# Warmup Iteration   7: 10538.364 ops/s
# Warmup Iteration   8: 10522.896 ops/s
# Warmup Iteration   9: 10620.512 ops/s
# Warmup Iteration  10: 10612.868 ops/s
# Warmup Iteration  11: 10567.409 ops/s
# Warmup Iteration  12: 10666.570 ops/s
# Warmup Iteration  13: 10572.179 ops/s
# Warmup Iteration  14: 10684.889 ops/s
# Warmup Iteration  15: 10687.581 ops/s
# Warmup Iteration  16: 9905.034 ops/s
# Warmup Iteration  17: 10518.601 ops/s
# Warmup Iteration  18: 10407.778 ops/s
# Warmup Iteration  19: 10476.463 ops/s
# Warmup Iteration  20: 10426.968 ops/s
Iteration   1: 10464.789 ops/s
Iteration   2: 10443.360 ops/s
Iteration   3: 10374.154 ops/s
Iteration   4: 8407.624 ops/s
Iteration   5: 10419.035 ops/s
Iteration   6: 10479.930 ops/s
Iteration   7: 10456.430 ops/s
Iteration   8: 8337.178 ops/s
Iteration   9: 10100.817 ops/s
Iteration  10: 10457.215 ops/s
Iteration  11: 10460.110 ops/s
Iteration  12: 8384.936 ops/s
Iteration  13: 9667.504 ops/s
Iteration  14: 10477.310 ops/s
Iteration  15: 10418.687 ops/s
Iteration  16: 10467.416 ops/s
Iteration  17: 10242.402 ops/s
Iteration  18: 10392.508 ops/s
Iteration  19: 10456.139 ops/s
Iteration  20: 10273.576 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  10059.056 ±(99.9%) 650.579 ops/s [Average]
  (min, avg, max) = (8337.178, 10059.056, 10479.930), stdev = 749.208
  CI (99.9%): [9408.477, 10709.635] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  10059.056 ± 650.579  ops/s

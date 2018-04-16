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
# Warmup Iteration   1: 9870.420 ops/s
# Warmup Iteration   2: 10217.783 ops/s
# Warmup Iteration   3: 10220.890 ops/s
# Warmup Iteration   4: 8666.898 ops/s
# Warmup Iteration   5: 10362.860 ops/s
# Warmup Iteration   6: 10255.009 ops/s
# Warmup Iteration   7: 10239.644 ops/s
# Warmup Iteration   8: 10231.313 ops/s
# Warmup Iteration   9: 10294.578 ops/s
# Warmup Iteration  10: 10322.380 ops/s
# Warmup Iteration  11: 10323.506 ops/s
# Warmup Iteration  12: 8646.054 ops/s
# Warmup Iteration  13: 10311.115 ops/s
# Warmup Iteration  14: 10363.102 ops/s
# Warmup Iteration  15: 10392.012 ops/s
# Warmup Iteration  16: 9384.158 ops/s
# Warmup Iteration  17: 10208.996 ops/s
# Warmup Iteration  18: 10156.627 ops/s
# Warmup Iteration  19: 10258.058 ops/s
# Warmup Iteration  20: 8603.385 ops/s
Iteration   1: 10335.786 ops/s
Iteration   2: 10333.500 ops/s
Iteration   3: 10275.493 ops/s
Iteration   4: 10309.828 ops/s
Iteration   5: 10341.215 ops/s
Iteration   6: 10301.182 ops/s
Iteration   7: 10310.631 ops/s
Iteration   8: 9000.030 ops/s
Iteration   9: 10342.583 ops/s
Iteration  10: 10341.860 ops/s
Iteration  11: 10339.441 ops/s
Iteration  12: 10328.504 ops/s
Iteration  13: 10266.801 ops/s
Iteration  14: 10353.576 ops/s
Iteration  15: 10344.216 ops/s
Iteration  16: 10343.765 ops/s
Iteration  17: 10345.747 ops/s
Iteration  18: 10265.113 ops/s
Iteration  19: 10356.471 ops/s
Iteration  20: 10203.451 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  10251.960 ±(99.9%) 258.079 ops/s [Average]
  (min, avg, max) = (9000.030, 10251.960, 10356.471), stdev = 297.204
  CI (99.9%): [9993.881, 10510.039] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  10251.960 ± 258.079  ops/s

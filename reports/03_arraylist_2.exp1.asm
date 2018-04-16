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
# Warmup Iteration   1: 7682.426 ops/s
# Warmup Iteration   2: 7856.405 ops/s
# Warmup Iteration   3: 7876.845 ops/s
# Warmup Iteration   4: 8076.701 ops/s
# Warmup Iteration   5: 8100.929 ops/s
# Warmup Iteration   6: 8098.903 ops/s
# Warmup Iteration   7: 8070.818 ops/s
# Warmup Iteration   8: 8154.086 ops/s
# Warmup Iteration   9: 8039.925 ops/s
# Warmup Iteration  10: 8105.487 ops/s
# Warmup Iteration  11: 8163.332 ops/s
# Warmup Iteration  12: 8096.770 ops/s
# Warmup Iteration  13: 8049.488 ops/s
# Warmup Iteration  14: 8007.944 ops/s
# Warmup Iteration  15: 8043.417 ops/s
# Warmup Iteration  16: 8020.496 ops/s
# Warmup Iteration  17: 8014.993 ops/s
# Warmup Iteration  18: 8157.442 ops/s
# Warmup Iteration  19: 8171.804 ops/s
# Warmup Iteration  20: 8101.744 ops/s
Iteration   1: 8108.804 ops/s
Iteration   2: 8045.018 ops/s
Iteration   3: 8030.174 ops/s
Iteration   4: 7938.205 ops/s
Iteration   5: 7934.671 ops/s
Iteration   6: 7924.444 ops/s
Iteration   7: 7882.028 ops/s
Iteration   8: 7946.258 ops/s
Iteration   9: 7936.016 ops/s
Iteration  10: 7943.752 ops/s
Iteration  11: 7927.540 ops/s
Iteration  12: 7846.622 ops/s
Iteration  13: 7938.220 ops/s
Iteration  14: 7936.871 ops/s
Iteration  15: 7530.467 ops/s
Iteration  16: 7927.361 ops/s
Iteration  17: 7889.421 ops/s
Iteration  18: 7952.705 ops/s
Iteration  19: 7939.459 ops/s
Iteration  20: 7946.867 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  7926.245 ±(99.9%) 94.937 ops/s [Average]
  (min, avg, max) = (7530.467, 7926.245, 8108.804), stdev = 109.330
  CI (99.9%): [7831.308, 8021.182] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  7926.245 ± 94.937  ops/s

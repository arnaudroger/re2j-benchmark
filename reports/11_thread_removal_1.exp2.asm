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
# Warmup Iteration   1: 16349.166 ops/s
# Warmup Iteration   2: 20774.512 ops/s
# Warmup Iteration   3: 20765.963 ops/s
# Warmup Iteration   4: 14123.919 ops/s
# Warmup Iteration   5: 20575.343 ops/s
# Warmup Iteration   6: 20407.931 ops/s
# Warmup Iteration   7: 20852.938 ops/s
# Warmup Iteration   8: 20344.338 ops/s
# Warmup Iteration   9: 20782.170 ops/s
# Warmup Iteration  10: 20809.135 ops/s
# Warmup Iteration  11: 20859.003 ops/s
# Warmup Iteration  12: 14208.348 ops/s
# Warmup Iteration  13: 20849.980 ops/s
# Warmup Iteration  14: 20798.942 ops/s
# Warmup Iteration  15: 20811.447 ops/s
# Warmup Iteration  16: 14508.142 ops/s
# Warmup Iteration  17: 20880.598 ops/s
# Warmup Iteration  18: 20837.331 ops/s
# Warmup Iteration  19: 17092.766 ops/s
# Warmup Iteration  20: 14131.533 ops/s
Iteration   1: 18401.507 ops/s
Iteration   2: 20890.748 ops/s
Iteration   3: 20809.378 ops/s
Iteration   4: 16640.708 ops/s
Iteration   5: 20789.162 ops/s
Iteration   6: 20885.284 ops/s
Iteration   7: 20873.329 ops/s
Iteration   8: 20878.259 ops/s
Iteration   9: 20822.787 ops/s
Iteration  10: 20861.255 ops/s
Iteration  11: 20913.338 ops/s
Iteration  12: 14292.165 ops/s
Iteration  13: 20869.727 ops/s
Iteration  14: 20677.111 ops/s
Iteration  15: 20802.239 ops/s
Iteration  16: 20819.026 ops/s
Iteration  17: 20833.758 ops/s
Iteration  18: 20779.550 ops/s
Iteration  19: 20788.040 ops/s
Iteration  20: 20813.995 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20172.068 ±(99.9%) 1511.735 ops/s [Average]
  (min, avg, max) = (14292.165, 20172.068, 20913.338), stdev = 1740.916
  CI (99.9%): [18660.333, 21683.803] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score      Error  Units
Re2jFindRegex.testExp2  thrpt   20  20172.068 ± 1511.735  ops/s

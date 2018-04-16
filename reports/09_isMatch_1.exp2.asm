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
# Warmup Iteration   1: 11959.072 ops/s
# Warmup Iteration   2: 12339.236 ops/s
# Warmup Iteration   3: 12368.955 ops/s
# Warmup Iteration   4: 12537.053 ops/s
# Warmup Iteration   5: 13041.306 ops/s
# Warmup Iteration   6: 12909.966 ops/s
# Warmup Iteration   7: 12943.189 ops/s
# Warmup Iteration   8: 12947.948 ops/s
# Warmup Iteration   9: 12864.958 ops/s
# Warmup Iteration  10: 12921.831 ops/s
# Warmup Iteration  11: 12907.021 ops/s
# Warmup Iteration  12: 12615.854 ops/s
# Warmup Iteration  13: 13035.814 ops/s
# Warmup Iteration  14: 13024.339 ops/s
# Warmup Iteration  15: 13043.858 ops/s
# Warmup Iteration  16: 12879.126 ops/s
# Warmup Iteration  17: 12846.061 ops/s
# Warmup Iteration  18: 12838.107 ops/s
# Warmup Iteration  19: 12810.159 ops/s
# Warmup Iteration  20: 12948.363 ops/s
Iteration   1: 13050.572 ops/s
Iteration   2: 13057.937 ops/s
Iteration   3: 13038.412 ops/s
Iteration   4: 12902.915 ops/s
Iteration   5: 12990.442 ops/s
Iteration   6: 12992.919 ops/s
Iteration   7: 12968.843 ops/s
Iteration   8: 13048.713 ops/s
Iteration   9: 12994.196 ops/s
Iteration  10: 13051.987 ops/s
Iteration  11: 13039.907 ops/s
Iteration  12: 13045.375 ops/s
Iteration  13: 13030.068 ops/s
Iteration  14: 12960.042 ops/s
Iteration  15: 13034.212 ops/s
Iteration  16: 13048.953 ops/s
Iteration  17: 13043.046 ops/s
Iteration  18: 13011.898 ops/s
Iteration  19: 12937.211 ops/s
Iteration  20: 13048.538 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  13014.809 ±(99.9%) 38.144 ops/s [Average]
  (min, avg, max) = (12902.915, 13014.809, 13057.937), stdev = 43.927
  CI (99.9%): [12976.665, 13052.954] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  13014.809 ± 38.144  ops/s

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
# Warmup Iteration   1: 7650.647 ops/s
# Warmup Iteration   2: 7917.361 ops/s
# Warmup Iteration   3: 7916.249 ops/s
# Warmup Iteration   4: 7959.636 ops/s
# Warmup Iteration   5: 8022.332 ops/s
# Warmup Iteration   6: 8024.316 ops/s
# Warmup Iteration   7: 7991.728 ops/s
# Warmup Iteration   8: 7981.640 ops/s
# Warmup Iteration   9: 7942.765 ops/s
# Warmup Iteration  10: 7941.153 ops/s
# Warmup Iteration  11: 7841.922 ops/s
# Warmup Iteration  12: 7839.792 ops/s
# Warmup Iteration  13: 7827.947 ops/s
# Warmup Iteration  14: 7874.493 ops/s
# Warmup Iteration  15: 7993.676 ops/s
# Warmup Iteration  16: 8012.804 ops/s
# Warmup Iteration  17: 7934.743 ops/s
# Warmup Iteration  18: 8009.818 ops/s
# Warmup Iteration  19: 7958.363 ops/s
# Warmup Iteration  20: 7997.793 ops/s
Iteration   1: 8009.187 ops/s
Iteration   2: 8002.583 ops/s
Iteration   3: 7996.864 ops/s
Iteration   4: 7772.119 ops/s
Iteration   5: 7845.109 ops/s
Iteration   6: 7839.686 ops/s
Iteration   7: 7831.182 ops/s
Iteration   8: 7832.986 ops/s
Iteration   9: 7784.524 ops/s
Iteration  10: 7786.024 ops/s
Iteration  11: 7839.828 ops/s
Iteration  12: 7835.220 ops/s
Iteration  13: 7822.177 ops/s
Iteration  14: 7779.155 ops/s
Iteration  15: 7850.007 ops/s
Iteration  16: 7833.978 ops/s
Iteration  17: 7840.297 ops/s
Iteration  18: 7833.609 ops/s
Iteration  19: 7772.839 ops/s
Iteration  20: 7836.099 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  7847.174 ±(99.9%) 62.406 ops/s [Average]
  (min, avg, max) = (7772.119, 7847.174, 8009.187), stdev = 71.867
  CI (99.9%): [7784.768, 7909.580] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  7847.174 ± 62.406  ops/s

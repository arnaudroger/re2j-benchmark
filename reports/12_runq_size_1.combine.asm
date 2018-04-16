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
# Warmup Iteration   1: 4883.606 ops/s
# Warmup Iteration   2: 5170.418 ops/s
# Warmup Iteration   3: 5212.778 ops/s
# Warmup Iteration   4: 5234.379 ops/s
# Warmup Iteration   5: 5225.426 ops/s
# Warmup Iteration   6: 5200.609 ops/s
# Warmup Iteration   7: 5243.935 ops/s
# Warmup Iteration   8: 5218.892 ops/s
# Warmup Iteration   9: 5222.372 ops/s
# Warmup Iteration  10: 5214.995 ops/s
# Warmup Iteration  11: 5191.954 ops/s
# Warmup Iteration  12: 5250.654 ops/s
# Warmup Iteration  13: 5230.838 ops/s
# Warmup Iteration  14: 5253.456 ops/s
# Warmup Iteration  15: 5249.277 ops/s
# Warmup Iteration  16: 5185.805 ops/s
# Warmup Iteration  17: 5250.939 ops/s
# Warmup Iteration  18: 5238.079 ops/s
# Warmup Iteration  19: 5224.159 ops/s
# Warmup Iteration  20: 5208.863 ops/s
Iteration   1: 5179.375 ops/s
Iteration   2: 5254.629 ops/s
Iteration   3: 5248.907 ops/s
Iteration   4: 5257.954 ops/s
Iteration   5: 5260.676 ops/s
Iteration   6: 5221.551 ops/s
Iteration   7: 5265.490 ops/s
Iteration   8: 5261.448 ops/s
Iteration   9: 5269.486 ops/s
Iteration  10: 5253.193 ops/s
Iteration  11: 5209.027 ops/s
Iteration  12: 5259.838 ops/s
Iteration  13: 5258.414 ops/s
Iteration  14: 5262.470 ops/s
Iteration  15: 5258.656 ops/s
Iteration  16: 5222.916 ops/s
Iteration  17: 5260.900 ops/s
Iteration  18: 5261.667 ops/s
Iteration  19: 5255.737 ops/s
Iteration  20: 5254.595 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  5248.847 ±(99.9%) 19.772 ops/s [Average]
  (min, avg, max) = (5179.375, 5248.847, 5269.486), stdev = 22.770
  CI (99.9%): [5229.074, 5268.619] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  5248.847 ± 19.772  ops/s

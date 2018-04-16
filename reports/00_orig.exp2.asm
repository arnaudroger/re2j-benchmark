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
# Warmup Iteration   1: 2802.247 ops/s
# Warmup Iteration   2: 2947.029 ops/s
# Warmup Iteration   3: 2960.683 ops/s
# Warmup Iteration   4: 2941.377 ops/s
# Warmup Iteration   5: 2963.712 ops/s
# Warmup Iteration   6: 2961.936 ops/s
# Warmup Iteration   7: 2938.489 ops/s
# Warmup Iteration   8: 2867.228 ops/s
# Warmup Iteration   9: 2926.473 ops/s
# Warmup Iteration  10: 2915.907 ops/s
# Warmup Iteration  11: 2921.379 ops/s
# Warmup Iteration  12: 2934.952 ops/s
# Warmup Iteration  13: 2909.005 ops/s
# Warmup Iteration  14: 2931.541 ops/s
# Warmup Iteration  15: 2942.249 ops/s
# Warmup Iteration  16: 2954.598 ops/s
# Warmup Iteration  17: 2981.291 ops/s
# Warmup Iteration  18: 2977.733 ops/s
# Warmup Iteration  19: 2944.675 ops/s
# Warmup Iteration  20: 2980.558 ops/s
Iteration   1: 2978.494 ops/s
Iteration   2: 2973.924 ops/s
Iteration   3: 2974.310 ops/s
Iteration   4: 2868.047 ops/s
Iteration   5: 2882.027 ops/s
Iteration   6: 2885.864 ops/s
Iteration   7: 2901.627 ops/s
Iteration   8: 2899.593 ops/s
Iteration   9: 2886.132 ops/s
Iteration  10: 2838.416 ops/s
Iteration  11: 2908.335 ops/s
Iteration  12: 2898.790 ops/s
Iteration  13: 2945.510 ops/s
Iteration  14: 2876.240 ops/s
Iteration  15: 2955.408 ops/s
Iteration  16: 2954.715 ops/s
Iteration  17: 2952.102 ops/s
Iteration  18: 2957.626 ops/s
Iteration  19: 2906.653 ops/s
Iteration  20: 2981.877 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  2921.284 ±(99.9%) 37.362 ops/s [Average]
  (min, avg, max) = (2838.416, 2921.284, 2981.877), stdev = 43.026
  CI (99.9%): [2883.923, 2958.646] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  2921.284 ± 37.362  ops/s

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
# Warmup Iteration   1: 21205.806 ops/s
# Warmup Iteration   2: 22626.473 ops/s
# Warmup Iteration   3: 22663.289 ops/s
# Warmup Iteration   4: 22495.270 ops/s
# Warmup Iteration   5: 22678.002 ops/s
# Warmup Iteration   6: 22549.171 ops/s
# Warmup Iteration   7: 22511.526 ops/s
# Warmup Iteration   8: 22468.516 ops/s
# Warmup Iteration   9: 22573.147 ops/s
# Warmup Iteration  10: 22445.966 ops/s
# Warmup Iteration  11: 22399.779 ops/s
# Warmup Iteration  12: 22572.694 ops/s
# Warmup Iteration  13: 22577.798 ops/s
# Warmup Iteration  14: 22539.888 ops/s
# Warmup Iteration  15: 22800.316 ops/s
# Warmup Iteration  16: 22589.592 ops/s
# Warmup Iteration  17: 22878.067 ops/s
# Warmup Iteration  18: 22832.913 ops/s
# Warmup Iteration  19: 22871.410 ops/s
# Warmup Iteration  20: 22833.139 ops/s
Iteration   1: 22675.128 ops/s
Iteration   2: 22742.135 ops/s
Iteration   3: 22863.342 ops/s
Iteration   4: 22856.745 ops/s
Iteration   5: 22832.522 ops/s
Iteration   6: 22674.554 ops/s
Iteration   7: 22860.799 ops/s
Iteration   8: 22836.713 ops/s
Iteration   9: 22810.895 ops/s
Iteration  10: 19205.225 ops/s
Iteration  11: 22667.114 ops/s
Iteration  12: 22740.814 ops/s
Iteration  13: 22827.786 ops/s
Iteration  14: 19826.635 ops/s
Iteration  15: 22834.782 ops/s
Iteration  16: 22675.745 ops/s
Iteration  17: 21752.132 ops/s
Iteration  18: 21676.501 ops/s
Iteration  19: 21755.159 ops/s
Iteration  20: 21710.427 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  22241.258 ±(99.9%) 896.361 ops/s [Average]
  (min, avg, max) = (19205.225, 22241.258, 22863.342), stdev = 1032.251
  CI (99.9%): [21344.896, 23137.619] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  22241.258 ± 896.361  ops/s

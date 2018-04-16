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
# Warmup Iteration   1: 25678.743 ops/s
# Warmup Iteration   2: 27423.584 ops/s
# Warmup Iteration   3: 27550.757 ops/s
# Warmup Iteration   4: 27563.457 ops/s
# Warmup Iteration   5: 27479.415 ops/s
# Warmup Iteration   6: 27320.464 ops/s
# Warmup Iteration   7: 27641.218 ops/s
# Warmup Iteration   8: 27645.224 ops/s
# Warmup Iteration   9: 27626.170 ops/s
# Warmup Iteration  10: 27619.903 ops/s
# Warmup Iteration  11: 27370.034 ops/s
# Warmup Iteration  12: 27560.037 ops/s
# Warmup Iteration  13: 27700.258 ops/s
# Warmup Iteration  14: 27653.165 ops/s
# Warmup Iteration  15: 27537.771 ops/s
# Warmup Iteration  16: 27491.151 ops/s
# Warmup Iteration  17: 27659.187 ops/s
# Warmup Iteration  18: 27548.034 ops/s
# Warmup Iteration  19: 27660.769 ops/s
# Warmup Iteration  20: 27659.412 ops/s
Iteration   1: 27462.225 ops/s
Iteration   2: 27665.335 ops/s
Iteration   3: 27681.081 ops/s
Iteration   4: 27565.335 ops/s
Iteration   5: 27635.958 ops/s
Iteration   6: 27407.015 ops/s
Iteration   7: 27669.913 ops/s
Iteration   8: 27675.912 ops/s
Iteration   9: 27692.324 ops/s
Iteration  10: 27551.685 ops/s
Iteration  11: 27489.777 ops/s
Iteration  12: 27676.864 ops/s
Iteration  13: 27672.624 ops/s
Iteration  14: 27657.053 ops/s
Iteration  15: 27627.564 ops/s
Iteration  16: 27354.550 ops/s
Iteration  17: 27666.026 ops/s
Iteration  18: 27661.186 ops/s
Iteration  19: 27668.832 ops/s
Iteration  20: 27598.502 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  27603.988 ±(99.9%) 87.107 ops/s [Average]
  (min, avg, max) = (27354.550, 27603.988, 27692.324), stdev = 100.312
  CI (99.9%): [27516.881, 27691.095] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  27603.988 ± 87.107  ops/s

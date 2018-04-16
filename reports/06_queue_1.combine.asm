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
# Warmup Iteration   1: 4569.611 ops/s
# Warmup Iteration   2: 4726.033 ops/s
# Warmup Iteration   3: 4720.085 ops/s
# Warmup Iteration   4: 4793.489 ops/s
# Warmup Iteration   5: 4797.740 ops/s
# Warmup Iteration   6: 4751.018 ops/s
# Warmup Iteration   7: 4773.335 ops/s
# Warmup Iteration   8: 4748.776 ops/s
# Warmup Iteration   9: 4691.322 ops/s
# Warmup Iteration  10: 4773.968 ops/s
# Warmup Iteration  11: 4758.282 ops/s
# Warmup Iteration  12: 4737.817 ops/s
# Warmup Iteration  13: 4717.297 ops/s
# Warmup Iteration  14: 4744.915 ops/s
# Warmup Iteration  15: 4763.734 ops/s
# Warmup Iteration  16: 4783.747 ops/s
# Warmup Iteration  17: 4710.362 ops/s
# Warmup Iteration  18: 4773.171 ops/s
# Warmup Iteration  19: 4810.106 ops/s
# Warmup Iteration  20: 4773.922 ops/s
Iteration   1: 4731.170 ops/s
Iteration   2: 4760.599 ops/s
Iteration   3: 4721.027 ops/s
Iteration   4: 4726.052 ops/s
Iteration   5: 4704.308 ops/s
Iteration   6: 4713.042 ops/s
Iteration   7: 4707.140 ops/s
Iteration   8: 4667.356 ops/s
Iteration   9: 4706.206 ops/s
Iteration  10: 4712.501 ops/s
Iteration  11: 4694.493 ops/s
Iteration  12: 4705.174 ops/s
Iteration  13: 4671.129 ops/s
Iteration  14: 4703.711 ops/s
Iteration  15: 4714.606 ops/s
Iteration  16: 4661.178 ops/s
Iteration  17: 4687.524 ops/s
Iteration  18: 4664.269 ops/s
Iteration  19: 4706.841 ops/s
Iteration  20: 4697.427 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  4702.788 ±(99.9%) 21.102 ops/s [Average]
  (min, avg, max) = (4661.178, 4702.788, 4760.599), stdev = 24.301
  CI (99.9%): [4681.686, 4723.889] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt     Score    Error  Units
Re2jFindRegex.testCombine  thrpt   20  4702.788 ± 21.102  ops/s

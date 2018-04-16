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
# Warmup Iteration   1: 19839.610 ops/s
# Warmup Iteration   2: 20638.627 ops/s
# Warmup Iteration   3: 20537.680 ops/s
# Warmup Iteration   4: 20606.724 ops/s
# Warmup Iteration   5: 19812.136 ops/s
# Warmup Iteration   6: 20550.867 ops/s
# Warmup Iteration   7: 20677.522 ops/s
# Warmup Iteration   8: 20610.998 ops/s
# Warmup Iteration   9: 20796.759 ops/s
# Warmup Iteration  10: 20276.543 ops/s
# Warmup Iteration  11: 20701.180 ops/s
# Warmup Iteration  12: 20650.006 ops/s
# Warmup Iteration  13: 20695.940 ops/s
# Warmup Iteration  14: 20834.330 ops/s
# Warmup Iteration  15: 20839.683 ops/s
# Warmup Iteration  16: 20828.143 ops/s
# Warmup Iteration  17: 20785.917 ops/s
# Warmup Iteration  18: 20696.988 ops/s
# Warmup Iteration  19: 20826.577 ops/s
# Warmup Iteration  20: 20839.604 ops/s
Iteration   1: 20814.765 ops/s
Iteration   2: 20800.321 ops/s
Iteration   3: 20698.097 ops/s
Iteration   4: 20411.543 ops/s
Iteration   5: 20701.795 ops/s
Iteration   6: 20766.304 ops/s
Iteration   7: 20773.308 ops/s
Iteration   8: 20667.599 ops/s
Iteration   9: 20835.642 ops/s
Iteration  10: 20239.339 ops/s
Iteration  11: 20834.271 ops/s
Iteration  12: 20726.484 ops/s
Iteration  13: 20660.198 ops/s
Iteration  14: 20816.182 ops/s
Iteration  15: 20802.739 ops/s
Iteration  16: 20774.806 ops/s
Iteration  17: 20766.180 ops/s
Iteration  18: 20655.245 ops/s
Iteration  19: 20815.275 ops/s
Iteration  20: 20719.342 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  20713.972 ±(99.9%) 128.178 ops/s [Average]
  (min, avg, max) = (20239.339, 20713.972, 20835.642), stdev = 147.609
  CI (99.9%): [20585.794, 20842.149] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  20713.972 ± 128.178  ops/s

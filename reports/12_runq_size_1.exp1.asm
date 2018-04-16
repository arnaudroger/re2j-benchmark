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
# Warmup Iteration   1: 25175.100 ops/s
# Warmup Iteration   2: 26427.968 ops/s
# Warmup Iteration   3: 26786.437 ops/s
# Warmup Iteration   4: 26796.316 ops/s
# Warmup Iteration   5: 26823.396 ops/s
# Warmup Iteration   6: 26736.054 ops/s
# Warmup Iteration   7: 26589.836 ops/s
# Warmup Iteration   8: 26821.496 ops/s
# Warmup Iteration   9: 26799.126 ops/s
# Warmup Iteration  10: 26809.654 ops/s
# Warmup Iteration  11: 26596.438 ops/s
# Warmup Iteration  12: 26571.595 ops/s
# Warmup Iteration  13: 26912.996 ops/s
# Warmup Iteration  14: 26905.928 ops/s
# Warmup Iteration  15: 26925.730 ops/s
# Warmup Iteration  16: 26891.435 ops/s
# Warmup Iteration  17: 26717.635 ops/s
# Warmup Iteration  18: 26860.175 ops/s
# Warmup Iteration  19: 26908.438 ops/s
# Warmup Iteration  20: 26943.800 ops/s
Iteration   1: 26870.822 ops/s
Iteration   2: 26692.107 ops/s
Iteration   3: 26907.334 ops/s
Iteration   4: 26854.233 ops/s
Iteration   5: 26721.976 ops/s
Iteration   6: 26595.852 ops/s
Iteration   7: 26573.849 ops/s
Iteration   8: 26786.072 ops/s
Iteration   9: 26757.653 ops/s
Iteration  10: 26758.784 ops/s
Iteration  11: 26763.622 ops/s
Iteration  12: 26850.742 ops/s
Iteration  13: 26896.776 ops/s
Iteration  14: 26933.255 ops/s
Iteration  15: 26955.685 ops/s
Iteration  16: 26859.693 ops/s
Iteration  17: 26769.258 ops/s
Iteration  18: 26826.438 ops/s
Iteration  19: 26898.160 ops/s
Iteration  20: 26901.737 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26808.702 ±(99.9%) 91.866 ops/s [Average]
  (min, avg, max) = (26573.849, 26808.702, 26955.685), stdev = 105.793
  CI (99.9%): [26716.837, 26900.568] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp1  thrpt   20  26808.702 ± 91.866  ops/s

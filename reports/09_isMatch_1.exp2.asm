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
# Warmup Iteration   1: 12078.491 ops/s
# Warmup Iteration   2: 12845.078 ops/s
# Warmup Iteration   3: 12797.462 ops/s
# Warmup Iteration   4: 12749.304 ops/s
# Warmup Iteration   5: 12863.428 ops/s
# Warmup Iteration   6: 12549.753 ops/s
# Warmup Iteration   7: 12918.916 ops/s
# Warmup Iteration   8: 12802.882 ops/s
# Warmup Iteration   9: 12793.983 ops/s
# Warmup Iteration  10: 12898.040 ops/s
# Warmup Iteration  11: 12907.146 ops/s
# Warmup Iteration  12: 12607.589 ops/s
# Warmup Iteration  13: 12460.868 ops/s
# Warmup Iteration  14: 12538.302 ops/s
# Warmup Iteration  15: 12505.785 ops/s
# Warmup Iteration  16: 12779.562 ops/s
# Warmup Iteration  17: 12905.623 ops/s
# Warmup Iteration  18: 12825.658 ops/s
# Warmup Iteration  19: 12923.760 ops/s
# Warmup Iteration  20: 12687.488 ops/s
Iteration   1: 12646.253 ops/s
Iteration   2: 12614.906 ops/s
Iteration   3: 12503.822 ops/s
Iteration   4: 12491.697 ops/s
Iteration   5: 12487.060 ops/s
Iteration   6: 12495.218 ops/s
Iteration   7: 12471.693 ops/s
Iteration   8: 12744.315 ops/s
Iteration   9: 12997.888 ops/s
Iteration  10: 13003.675 ops/s
Iteration  11: 12959.327 ops/s
Iteration  12: 12992.947 ops/s
Iteration  13: 12925.091 ops/s
Iteration  14: 13002.039 ops/s
Iteration  15: 12653.246 ops/s
Iteration  16: 12693.694 ops/s
Iteration  17: 12983.931 ops/s
Iteration  18: 12817.617 ops/s
Iteration  19: 12967.945 ops/s
Iteration  20: 13021.861 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  12773.711 ±(99.9%) 186.102 ops/s [Average]
  (min, avg, max) = (12471.693, 12773.711, 13021.861), stdev = 214.315
  CI (99.9%): [12587.609, 12959.813] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp2  thrpt   20  12773.711 ± 186.102  ops/s

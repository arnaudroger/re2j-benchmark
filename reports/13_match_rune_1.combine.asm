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
# Warmup Iteration   1: 10701.781 ops/s
# Warmup Iteration   2: 11400.380 ops/s
# Warmup Iteration   3: 11460.955 ops/s
# Warmup Iteration   4: 11437.744 ops/s
# Warmup Iteration   5: 11367.289 ops/s
# Warmup Iteration   6: 11421.593 ops/s
# Warmup Iteration   7: 11410.670 ops/s
# Warmup Iteration   8: 11433.643 ops/s
# Warmup Iteration   9: 11432.552 ops/s
# Warmup Iteration  10: 11349.473 ops/s
# Warmup Iteration  11: 11467.266 ops/s
# Warmup Iteration  12: 11488.236 ops/s
# Warmup Iteration  13: 11480.153 ops/s
# Warmup Iteration  14: 11469.740 ops/s
# Warmup Iteration  15: 11373.623 ops/s
# Warmup Iteration  16: 11475.025 ops/s
# Warmup Iteration  17: 11442.128 ops/s
# Warmup Iteration  18: 11442.072 ops/s
# Warmup Iteration  19: 11432.028 ops/s
# Warmup Iteration  20: 11382.748 ops/s
Iteration   1: 11452.961 ops/s
Iteration   2: 11454.954 ops/s
Iteration   3: 11393.828 ops/s
Iteration   4: 11441.361 ops/s
Iteration   5: 11362.500 ops/s
Iteration   6: 11458.416 ops/s
Iteration   7: 11452.559 ops/s
Iteration   8: 11447.105 ops/s
Iteration   9: 11439.111 ops/s
Iteration  10: 11364.605 ops/s
Iteration  11: 11284.822 ops/s
Iteration  12: 11437.795 ops/s
Iteration  13: 11449.985 ops/s
Iteration  14: 11438.912 ops/s
Iteration  15: 11359.073 ops/s
Iteration  16: 11459.710 ops/s
Iteration  17: 11451.056 ops/s
Iteration  18: 9791.373 ops/s
Iteration  19: 11370.477 ops/s
Iteration  20: 11345.344 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testCombine":
  11332.797 ±(99.9%) 317.991 ops/s [Average]
  (min, avg, max) = (9791.373, 11332.797, 11459.710), stdev = 366.198
  CI (99.9%): [11014.807, 11650.788] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                   Mode  Cnt      Score     Error  Units
Re2jFindRegex.testCombine  thrpt   20  11332.797 ± 317.991  ops/s

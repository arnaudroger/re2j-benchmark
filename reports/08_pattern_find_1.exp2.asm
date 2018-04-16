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
# Warmup Iteration   1: 11832.631 ops/s
# Warmup Iteration   2: 12409.589 ops/s
# Warmup Iteration   3: 12426.677 ops/s
# Warmup Iteration   4: 12345.286 ops/s
# Warmup Iteration   5: 12538.424 ops/s
# Warmup Iteration   6: 12435.078 ops/s
# Warmup Iteration   7: 12490.871 ops/s
# Warmup Iteration   8: 12424.336 ops/s
# Warmup Iteration   9: 12317.428 ops/s
# Warmup Iteration  10: 12408.264 ops/s
# Warmup Iteration  11: 12401.626 ops/s
# Warmup Iteration  12: 12383.626 ops/s
# Warmup Iteration  13: 12506.220 ops/s
# Warmup Iteration  14: 12511.770 ops/s
# Warmup Iteration  15: 12512.582 ops/s
# Warmup Iteration  16: 12490.213 ops/s
# Warmup Iteration  17: 11921.393 ops/s
# Warmup Iteration  18: 11940.145 ops/s
# Warmup Iteration  19: 11866.769 ops/s
# Warmup Iteration  20: 11958.264 ops/s
Iteration   1: 12289.442 ops/s
Iteration   2: 12371.772 ops/s
Iteration   3: 12364.707 ops/s
Iteration   4: 12293.278 ops/s
Iteration   5: 12293.338 ops/s
Iteration   6: 12305.348 ops/s
Iteration   7: 12284.900 ops/s
Iteration   8: 12321.561 ops/s
Iteration   9: 12343.099 ops/s
Iteration  10: 12499.230 ops/s
Iteration  11: 12500.531 ops/s
Iteration  12: 12489.411 ops/s
Iteration  13: 12483.942 ops/s
Iteration  14: 12404.918 ops/s
Iteration  15: 12503.102 ops/s
Iteration  16: 12484.368 ops/s
Iteration  17: 12498.365 ops/s
Iteration  18: 12467.325 ops/s
Iteration  19: 12421.395 ops/s
Iteration  20: 12491.271 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  12405.565 ±(99.9%) 75.537 ops/s [Average]
  (min, avg, max) = (12284.900, 12405.565, 12503.102), stdev = 86.988
  CI (99.9%): [12330.028, 12481.102] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  12405.565 ± 75.537  ops/s

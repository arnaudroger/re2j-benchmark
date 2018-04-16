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
# Warmup Iteration   1: 17850.074 ops/s
# Warmup Iteration   2: 18955.408 ops/s
# Warmup Iteration   3: 18242.082 ops/s
# Warmup Iteration   4: 18865.378 ops/s
# Warmup Iteration   5: 19012.827 ops/s
# Warmup Iteration   6: 18996.629 ops/s
# Warmup Iteration   7: 19154.620 ops/s
# Warmup Iteration   8: 19084.401 ops/s
# Warmup Iteration   9: 19154.524 ops/s
# Warmup Iteration  10: 19067.861 ops/s
# Warmup Iteration  11: 18822.417 ops/s
# Warmup Iteration  12: 18690.717 ops/s
# Warmup Iteration  13: 18691.505 ops/s
# Warmup Iteration  14: 18925.063 ops/s
# Warmup Iteration  15: 18955.271 ops/s
# Warmup Iteration  16: 19055.643 ops/s
# Warmup Iteration  17: 17848.351 ops/s
# Warmup Iteration  18: 17851.236 ops/s
# Warmup Iteration  19: 18420.271 ops/s
# Warmup Iteration  20: 19024.864 ops/s
Iteration   1: 19106.758 ops/s
Iteration   2: 19142.356 ops/s
Iteration   3: 19156.625 ops/s
Iteration   4: 19111.279 ops/s
Iteration   5: 18994.149 ops/s
Iteration   6: 19130.087 ops/s
Iteration   7: 19156.046 ops/s
Iteration   8: 19129.086 ops/s
Iteration   9: 18587.751 ops/s
Iteration  10: 19022.268 ops/s
Iteration  11: 19133.579 ops/s
Iteration  12: 19138.458 ops/s
Iteration  13: 19147.517 ops/s
Iteration  14: 19100.156 ops/s
Iteration  15: 19018.984 ops/s
Iteration  16: 19128.818 ops/s
Iteration  17: 19153.213 ops/s
Iteration  18: 19129.867 ops/s
Iteration  19: 19134.689 ops/s
Iteration  20: 18994.563 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  19080.813 ±(99.9%) 111.034 ops/s [Average]
  (min, avg, max) = (18587.751, 19080.813, 19156.625), stdev = 127.867
  CI (99.9%): [18969.778, 19191.847] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  19080.813 ± 111.034  ops/s

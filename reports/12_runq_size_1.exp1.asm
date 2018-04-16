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
# Warmup Iteration   1: 25270.759 ops/s
# Warmup Iteration   2: 26705.610 ops/s
# Warmup Iteration   3: 26752.532 ops/s
# Warmup Iteration   4: 26845.872 ops/s
# Warmup Iteration   5: 26706.910 ops/s
# Warmup Iteration   6: 26670.227 ops/s
# Warmup Iteration   7: 26848.364 ops/s
# Warmup Iteration   8: 26832.618 ops/s
# Warmup Iteration   9: 26816.577 ops/s
# Warmup Iteration  10: 26608.505 ops/s
# Warmup Iteration  11: 26840.639 ops/s
# Warmup Iteration  12: 26822.385 ops/s
# Warmup Iteration  13: 27028.249 ops/s
# Warmup Iteration  14: 26985.517 ops/s
# Warmup Iteration  15: 26826.091 ops/s
# Warmup Iteration  16: 27023.021 ops/s
# Warmup Iteration  17: 26110.565 ops/s
# Warmup Iteration  18: 26152.818 ops/s
# Warmup Iteration  19: 26757.218 ops/s
# Warmup Iteration  20: 26606.051 ops/s
Iteration   1: 26775.270 ops/s
Iteration   2: 26800.425 ops/s
Iteration   3: 26800.122 ops/s
Iteration   4: 26757.669 ops/s
Iteration   5: 26597.450 ops/s
Iteration   6: 26926.328 ops/s
Iteration   7: 27021.172 ops/s
Iteration   8: 27011.222 ops/s
Iteration   9: 26962.172 ops/s
Iteration  10: 26713.146 ops/s
Iteration  11: 27012.105 ops/s
Iteration  12: 27020.939 ops/s
Iteration  13: 27021.722 ops/s
Iteration  14: 26978.535 ops/s
Iteration  15: 26798.892 ops/s
Iteration  16: 27012.338 ops/s
Iteration  17: 26941.319 ops/s
Iteration  18: 27014.308 ops/s
Iteration  19: 26977.429 ops/s
Iteration  20: 26828.419 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp1":
  26898.549 ±(99.9%) 111.032 ops/s [Average]
  (min, avg, max) = (26597.450, 26898.549, 27021.722), stdev = 127.865
  CI (99.9%): [26787.517, 27009.581] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt      Score     Error  Units
Re2jFindRegex.testExp1  thrpt   20  26898.549 ± 111.032  ops/s

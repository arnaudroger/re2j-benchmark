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
# Warmup Iteration   1: 3285.000 ops/s
# Warmup Iteration   2: 3392.705 ops/s
# Warmup Iteration   3: 3436.599 ops/s
# Warmup Iteration   4: 3434.468 ops/s
# Warmup Iteration   5: 3437.275 ops/s
# Warmup Iteration   6: 3424.089 ops/s
# Warmup Iteration   7: 3392.901 ops/s
# Warmup Iteration   8: 3477.416 ops/s
# Warmup Iteration   9: 3478.577 ops/s
# Warmup Iteration  10: 3476.253 ops/s
# Warmup Iteration  11: 3469.181 ops/s
# Warmup Iteration  12: 3451.071 ops/s
# Warmup Iteration  13: 3475.307 ops/s
# Warmup Iteration  14: 3475.047 ops/s
# Warmup Iteration  15: 3457.556 ops/s
# Warmup Iteration  16: 3445.020 ops/s
# Warmup Iteration  17: 3363.078 ops/s
# Warmup Iteration  18: 3388.775 ops/s
# Warmup Iteration  19: 3448.696 ops/s
# Warmup Iteration  20: 3462.756 ops/s
Iteration   1: 3454.584 ops/s
Iteration   2: 3422.831 ops/s
Iteration   3: 3463.335 ops/s
Iteration   4: 3475.534 ops/s
Iteration   5: 3479.253 ops/s
Iteration   6: 3463.928 ops/s
Iteration   7: 3452.578 ops/s
Iteration   8: 3479.880 ops/s
Iteration   9: 3480.738 ops/s
Iteration  10: 3477.023 ops/s
Iteration  11: 3466.107 ops/s
Iteration  12: 3455.889 ops/s
Iteration  13: 3469.486 ops/s
Iteration  14: 3475.321 ops/s
Iteration  15: 3477.158 ops/s
Iteration  16: 3466.580 ops/s
Iteration  17: 3437.277 ops/s
Iteration  18: 3462.040 ops/s
Iteration  19: 3417.393 ops/s
Iteration  20: 3412.271 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3459.460 ±(99.9%) 18.414 ops/s [Average]
  (min, avg, max) = (3412.271, 3459.460, 3480.738), stdev = 21.206
  CI (99.9%): [3441.046, 3477.875] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  3459.460 ± 18.414  ops/s

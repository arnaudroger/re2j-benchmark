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
# Warmup Iteration   1: 3131.249 ops/s
# Warmup Iteration   2: 3174.040 ops/s
# Warmup Iteration   3: 3222.036 ops/s
# Warmup Iteration   4: 3222.266 ops/s
# Warmup Iteration   5: 3222.045 ops/s
# Warmup Iteration   6: 3218.074 ops/s
# Warmup Iteration   7: 3193.358 ops/s
# Warmup Iteration   8: 3243.734 ops/s
# Warmup Iteration   9: 3242.010 ops/s
# Warmup Iteration  10: 3234.220 ops/s
# Warmup Iteration  11: 3236.840 ops/s
# Warmup Iteration  12: 3214.710 ops/s
# Warmup Iteration  13: 3231.260 ops/s
# Warmup Iteration  14: 3244.954 ops/s
# Warmup Iteration  15: 3196.138 ops/s
# Warmup Iteration  16: 3223.992 ops/s
# Warmup Iteration  17: 3166.923 ops/s
# Warmup Iteration  18: 3195.688 ops/s
# Warmup Iteration  19: 3195.005 ops/s
# Warmup Iteration  20: 3195.252 ops/s
Iteration   1: 3168.840 ops/s
Iteration   2: 3171.494 ops/s
Iteration   3: 3193.315 ops/s
Iteration   4: 3193.901 ops/s
Iteration   5: 3184.946 ops/s
Iteration   6: 3185.937 ops/s
Iteration   7: 3169.206 ops/s
Iteration   8: 3188.184 ops/s
Iteration   9: 3176.849 ops/s
Iteration  10: 3208.618 ops/s
Iteration  11: 3212.120 ops/s
Iteration  12: 3182.589 ops/s
Iteration  13: 3143.035 ops/s
Iteration  14: 3214.882 ops/s
Iteration  15: 3206.488 ops/s
Iteration  16: 3202.036 ops/s
Iteration  17: 3172.163 ops/s
Iteration  18: 3224.914 ops/s
Iteration  19: 3164.488 ops/s
Iteration  20: 3221.924 ops/s


Result "com.github.arnaudroger.re2j.Re2jFindRegex.testExp2":
  3189.297 ±(99.9%) 18.685 ops/s [Average]
  (min, avg, max) = (3143.035, 3189.297, 3224.914), stdev = 21.517
  CI (99.9%): [3170.612, 3207.981] (assumes normal distribution)


# Run complete. Total time: 00:00:40

Benchmark                Mode  Cnt     Score    Error  Units
Re2jFindRegex.testExp2  thrpt   20  3189.297 ± 18.685  ops/s

# re2j-benchmark


Java vs Re2j 1.1
```
Benchmark            Mode  Cnt      Score      Error  Units
JavaRegex.testExp1  thrpt   20  69472.818 ± 2044.397  ops/s
JavaRegex.testExp2  thrpt   20  28633.977 ± 1137.907  ops/s
Re2jRegex.testExp1  thrpt   20   5588.243 ±  243.243  ops/s  12x slower
Re2jRegex.testExp2  thrpt   20   2396.673 ±  112.788  ops/s  12x slower
```


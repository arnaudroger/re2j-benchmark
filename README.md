# re2j-benchmark


Java vs Re2j 1.1
```
Benchmark            Mode  Cnt      Score      Error  Units
JavaRegex.testExp1  thrpt   20  69472.818 ± 2044.397  ops/s
JavaRegex.testExp2  thrpt   20  28633.977 ± 1137.907  ops/s
Re2jRegex.testExp1  thrpt   20   5588.243 ±  243.243  ops/s  12x slower
Re2jRegex.testExp2  thrpt   20   2396.673 ±  112.788  ops/s  12x slower
```

```
01_enum_ordinal_1 a9b7bf6463452c5992bd5e611dc91fb45cf74d02
Benchmark            Mode  Cnt     Score     Error  Units
Re2jRegex.testExp1  thrpt   20  6045.846 ± 205.968  ops/s   9%
Re2jRegex.testExp2  thrpt   20  2611.559 ±  60.193  ops/s   9%
```

```
02_inst_op_1      f1c2df6a6d1999b006de6b1924e734902faa7914
Benchmark            Mode  Cnt     Score     Error  Units
Re2jRegex.testExp1  thrpt   20  6286.033 ± 115.068  ops/s   4%/12% 
Re2jRegex.testExp2  thrpt   20  2690.224 ±  44.307  ops/s   3%/12%
```

```
03_arraylist_1    792b0a8259b851eb0284bc3752dc7a7e6015812a
Benchmark            Mode  Cnt     Score     Error  Units
Re2jRegex.testExp1  thrpt   20  6647.046 ±  76.968  ops/s   6%/18%
Re2jRegex.testExp2  thrpt   20  2822.259 ± 102.974  ops/s   5%/18%
```


```
03_arraylist_2    bec631b1f803c264748ba8672d1fbc82051b660b
Benchmark            Mode  Cnt     Score     Error  Units 
Re2jRegex.testExp1  thrpt   20  7132.100 ± 248.175  ops/s   7%/28%
Re2jRegex.testExp2  thrpt   20  2891.840 ±  89.795  ops/s   2%/21%
```


```
04_simeplfold_1   bc6d2e01659f5f5449b3e21ca1121cec3eaf211d
Benchmark            Mode  Cnt     Score     Error  Units
Re2jRegex.testExp1  thrpt   20  8855.038 ± 221.698  ops/s  24%/58%    8x
Re2jRegex.testExp2  thrpt   20  5784.196 ± 177.760  ops/s 100%/140%   5x
```

```
05_proggetinst_1  791561ba7296a02c59dd430b20e8941a0cb4fdbf
Benchmark            Mode  Cnt     Score     Error  Units
Re2jRegex.testExp1  thrpt   20  9211.810 ± 164.813  ops/s   4%/65%
Re2jRegex.testExp2  thrpt   20  6008.852 ± 126.747  ops/s   4%/151%
```

```
06_queue_1        334e94485386aa052fa1ef3c9e00e0a507c41449 
Benchmark            Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1  thrpt   20  10155.607 ±  72.267  ops/s  10%/82%   7x
Re2jRegex.testExp2  thrpt   20   6793.033 ± 152.834  ops/s  13%/183%  4x
```


```
06_queue_1        334e94485386aa052fa1ef3c9e00e0a507c41449 
Benchmark            Mode  Cnt      Score      Error  Units
Re2jRegex.testExp1  thrpt   20  12248.762 ±  305.589  ops/s  20%/119%
Re2jRegex.testExp2  thrpt   20   8574.090 ±  145.671  ops/s  26%/258%
```

```
07_pattern_find_1 0aca850d68f27d7c2674a512f4f35e2fdd1825fa
Benchmark            Mode  Cnt      Score     Error  Units
Re2jRegex.testExp1  thrpt   20  15798.117 ± 347.506  ops/s  29%/182%
Re2jRegex.testExp2  thrpt   20  10704.272 ± 371.194  ops/s  25%/347%
```
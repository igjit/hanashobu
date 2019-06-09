# hanashobu

Scripts to scrape and visualize flowering number of <http://www.meijijingu.or.jp/hanashobu/>

## Uasge

Append a cron job like this:

```
0 16 * * * curl http://www.meijijingu.or.jp/hanashobu/ | iconv -f cp932 | grep 花菖蒲開花数 >> hanashobu.txt
```

Parse that text

```sh
./parse.sh hanashobu.txt > hanashobu.csv
```

Plot flowering number

```sh
Rscript --vanilla plot.R hanashobu.csv
```

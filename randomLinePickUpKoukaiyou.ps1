#URLリストのパス
$URLListPath = "C:\hogehoge\kyodoRyoriSyu1.txt" 
##URLリストを読み込み
$contents = Get-Content $URLListPath -Encoding UTF8

$rnd = Get-Random -Maximum ($contents.Length-1) -Minimum 1

Start-Process $contents[$rnd]
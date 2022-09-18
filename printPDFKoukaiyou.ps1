#SendKeysを使うため、System.Windows.Forms名前空間読込
Add-Type -AssemblyName System.Windows.Forms

#URLリストのパス
$URLListPath = "C:\hogehoge\kyodoRyoriSyu1.txt" 
##URLリストを読み込み
$contents = Get-Content $URLListPath -Encoding UTF8

Start-Sleep -s 10
echo "Start"

for($i=0; $i -lt $contents.Length; $i++){

[System.Windows.Forms.SendKeys]::SendWait("^l")
[System.Windows.Forms.SendKeys]::SendWait($contents[$i])
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -s 3
[System.Windows.Forms.SendKeys]::SendWait("^p")
Start-Sleep -s 3
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -s 3
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -s 3
[System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
Start-Sleep -s 3

}


# Number guessing game
﻿# set shortcut property
#C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy RemoteSigned -file [file path].ps1




function numberGuessingGame(){
# crate random number 1 - 100
[int]$randomNumber = Get-Random -Minimum 1 -Maximum 100
# Write-Host $randomNumber
Write-Host "ランダムな数を当てるゲームです。"
[bool]$correctNumber = $false


for ($i = 10;$i -gt 0;$i--){
Write-Host "[残り $i 回]"
# input guess number from user
[int]$guessNumber = Read-Host "1 から 100 までの数を1つ入力してください。"




if($guessNumber -gt $randomNumber ){
Write-Host "入力した数は $guessNumber です。"
Write-Host "正解の数は入力した数よりも小さい数です。" 
Write-Host ""
}elseif($guessNumber -lt $randomNumber ){
Write-Host "入力した数は $guessNumber です。"
Write-Host "正解の数は入力した数よりも大きい数です。" 
Write-Host ""
}else{
$correctNumber = $true
Break
}
}# out of for loop
if($correctNumber){
Write-Host "正解!! 正解は $randomNumber です。"
}else{
Write-Host "残念!! 正解は $randomNumber でした。"
}
Start-Sleep -Milliseconds 500
#output sound of beep
[Console]::Beep();
[Console]::Beep();
[Console]::Beep();
Read-Host "終了するには何かキーを押してください。"
$wsobj = new-object -comobject wscript.shell;
#popup message
$popup = $wsobj.popup("Thank you!");
}# out of function
numberGuessingGame
#EOC
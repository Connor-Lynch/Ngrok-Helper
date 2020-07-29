function ShowMenu {
    param (
        [string]$Title = 'Ngrok Helper'
    )
    Clear-Host
    Write-Host "================ $Title ================" -ForegroundColor Green
    
    Write-Host "1: Press '1' for 80"
    Write-Host "2: Press '2' for 443." -ForegroundColor Blue
    Write-Host "3: Press '3' for custom port." -ForegroundColor Magenta
    Write-Host "4: Press '4' for IIS." -ForegroundColor Cyan
    Write-Host "Q: Press 'Q' to quit." -ForegroundColor Yellow
}

do
 {
    ShowMenu
    $selection = Read-Host "Please make a selection"
    switch ($selection)
    {
        '1' 
        {
            Write-Host "Opening ngrok on port 80"
            ./ngrok http 80
        } 
        '2' 
        {
            Write-Host "Opening ngrok on port 443" -ForegroundColor Blue
            ./ngrok http 443
        }
        '3'
        {
            $customPort = Read-Host "Please enter port number"
            Write-Host "Opening ngrok on port " $customPort -ForegroundColor Magenta
            ./ngrok http $customPort
        } 
        '4' 
        {
            $customPort = Read-Host "Please enter port number"
            Write-Host "Opening ngrok on for IIS on port " $customPort -ForegroundColor Cyan
            $customHost = 'localhost:' + $customPort
            ./ngrok http -host-header=$customHost $customPort
        }
    }
    pause
 }
 until ($selection -eq 'q')



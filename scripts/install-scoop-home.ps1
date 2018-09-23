[environment]::setEnvironmentVariable('SCOOP','C:\Home\Scoop','User')
$env:SCOOP='C:\Home\Scoop'
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
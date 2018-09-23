Remove-Item alias:ls

Function ls {Get-ChildItem | Where-Object {$_.Name -match "^[^\._]+"}}

Function Test-Elevated {
  $wid = [System.Security.Principal.WindowsIdentity]::GetCurrent()
  $prp = New-Object System.Security.Principal.WindowsPrincipal($wid)
  $adm = [System.Security.Principal.WindowsBuiltInRole]::Administrator
  $prp.IsInRole($adm)
}

If (Test-Elevated) {
  cowsay -p -f "dragon" "ADMIN, here be dragons."
} Else {
  cowsay -p -f "moose" "Salutations $(Get-Date)"
}
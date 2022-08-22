param (
    [Parameter(Position=0)][string]$name = $null
)

$venvs = ""

if ($name -eq '') {
    $v = ".\venv\Scripts\Activate.ps1"
} else {
    $v = "$venvs\$name\Scripts\Activate.ps1"
}

if (Test-Path $v) {
    & "$v"
} else {
    Write-Host No Such venv: $v
}
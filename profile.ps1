Set-Alias uvipython ".venv\Scripts\ipython"
Set-Alias which Get-Command
function uvv {
    uv venv
    .venv\Scripts\activate
}
function gitcommitm {
    param (
        [string]$message
    )
    git add -A
    git commit -m $message
    git push
}
function pca {
    uv tool run pre-commit run --all-files
}
function rmrf {
  param (
    [string]$InputPath
  )
  Remove-Item -Path $InputPath -Recurse -Force
}
function touch {
    param (
        [string]$Path
    )
    if (-not (Test-Path $Path)) {
        New-Item -Path $Path -ItemType File
    } else {
        (Get-Item $Path).LastWriteTime = Get-Date
    }
}

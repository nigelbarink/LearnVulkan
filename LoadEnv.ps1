$SCRIPT_DIR = Split-Path -Path $PSCommandPath 

function run {
   param (
       [string] $PROJECT 
   )
    Write-Output "Start Running $PROJECT ..."
    & $SCRIPT_DIR/build/$PROJECT/Debug/$PROJECT.exe
}

function build {
    Write-Output "Starting Build..."
    & cmake --build "$SCRIPT_DIR/build" 
}

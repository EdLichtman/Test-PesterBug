function Test-MyDotSourcingFunction {
    Invoke-Expression ". '$PSScriptRoot\Test-MyFirstDotSourcedFunction.ps1'"
    Invoke-Expression ". '$PSScriptRoot\Test-MySecondDotSourcedFunction.ps1'"
    Invoke-Expression ". '$PSScriptRoot\Test-MyGlobalDotSourcedFunction.ps1'"

    Test-MyGlobalDotSourcedFunction
    # Test-MySecondDotSourcedFunction
}
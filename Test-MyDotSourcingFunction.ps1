function Test-MyDotSourcingFunction {
    Invoke-Expression ". '$PSScriptRoot\Test-MyFirstDotSourcedFunction.ps1'"
    Invoke-Expression ". '$PSScriptRoot\Test-MySecondDotSourcedFunction.ps1'"

    Test-MySecondDotSourcedFunction
}
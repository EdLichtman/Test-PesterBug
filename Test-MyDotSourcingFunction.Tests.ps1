Describe "The problem" {
    It "Shouldn't have an issue dot sourcing a secondary function" {
        . "$PSScriptRoot\Test-MyDotSourcingFunction.ps1"
        
        Mock Invoke-Expression { Write-Output "Behavior was mocked" } -ParameterFilter {$Command -match ". '*Test-MyFirstDotSourcedFunction.ps1'"}

        Write-Output 'Running My DotSourcing function should Pass because there should be no exceptions'
        Test-MyDotSourcingFunction

    }
}
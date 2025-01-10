# Define the API endpoint
$URL = "https://jsonplaceholder.typicode.com/posts"

# Send a GET request
try {
    Write-Host "Sending GET request to $URL..." -ForegroundColor Cyan
    $Response = Invoke-RestMethod -Uri $URL -Method GET
    Write-Host "Request successful. Response:" -ForegroundColor Green
    $Response | Format-Table
} catch {
    Write-Host "An error occurred: $($_.Exception.Message)" -ForegroundColor Red
}


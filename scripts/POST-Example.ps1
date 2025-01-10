# Define the API endpoint
$URL = "https://jsonplaceholder.typicode.com/posts"

# Define the request body
$Body = @{
    title = "Learning REST APIs"
    body = "REST APIs are fun and powerful!"
    userId = 1
} | ConvertTo-Json -Depth 10

# Send a POST request
try {
    Write-Host "Sending POST request to $URL..." -ForegroundColor Cyan
    $Response = Invoke-RestMethod -Uri $URL -Method POST -Body $Body -ContentType "application/json"
    Write-Host "Request successful. Response:" -ForegroundColor Green
    $Response | Format-List
} catch {
    Write-Host "An error occurred: $($_.Exception.Message)" -ForegroundColor Red
}


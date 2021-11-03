$org = ''
$token = ''

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Accept", "application/json")
$headers.Add("Content-Type", "application/json")
$headers.Add("Authorization", "SSWS $token")


$response = Invoke-RestMethod "https://$org.okta.com/api/v1/users/me" -Method 'GET' -Headers $headers

$response | ConvertTo-Json
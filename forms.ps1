#URL
$url = "example.com"
#form data 
$formData = @{
	name = "user"
	password = "password"
}

#Send POST request
$response = Invoke-WebRequest -Uri $url -Method Post -Body $formData -UseBasicParsing

#check if successful
if ($response.StatusCode -eq 200) {
	Write-Host "Submission Successful!"
} else {
	Write-Host "Failed $($response.StatusCode)"
}

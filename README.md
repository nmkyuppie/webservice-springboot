# webservice-springboot
web service uses postgres

## **ToDo

Change data base details in `application.properties`

## **API Documentation**

### Sample input and output

### CASE Success

http://localhost:8080/login?userName=GOVIND&password=12345

`{"result":{"loginId":5,"userName":"GOVIND","password":"12345","email":null,"mobileNumber":"000","isLocked":false,"isValid":true,"userRoleId":1},"status":"OK","errorMessage":"User name and password is correct."}`

### CASE Invalid password

http://localhost:8080/login?userName=GOVIND&password=1234

`{"result":null,"status":"OK","errorMessage":"User name or password is invalid."}`

### CASE Invalid username**

http://localhost:8080/login?userName=MANI&password=12345

`{"result":false,"status":"OK","errorMessage":"User name is invalid."}`

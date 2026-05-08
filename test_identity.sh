#!/bin/bash
RAND=$RANDOM
EMAIL="test$RAND@amani.com"

# 1. Register
echo "Registering..."
curl -s -X POST http://localhost:8080/auth/register-paciente -H "Content-Type: application/json" -d "{\"fechaNacimiento\":\"1990-01-01\",\"aceptaTerminos\":true,\"usuario\":{\"nombre\":\"Test\",\"apellido\":\"Paciente\",\"dni\":\"12345678Z\",\"email\":\"$EMAIL\",\"password\":\"password123\",\"rol\":\"paciente\"}}" > /dev/null

# 2. Login
echo "Logging in..."
RESPONSE=$(curl -s -X POST http://localhost:8080/auth/login -H "Content-Type: application/json" -d "{\"email\":\"$EMAIL\",\"password\":\"password123\"}")
TOKEN=$(echo "$RESPONSE" | jq -r '.token')
echo "JWT Token: ${TOKEN:0:30}..."

# 3. Get Firebase Token
echo "Getting Firebase Token..."
FB_RESPONSE=$(curl -s -X GET http://localhost:8080/api/auth/firebase-token -H "Authorization: Bearer $TOKEN")
FB_TOKEN=$(echo "$FB_RESPONSE" | jq -r '.firebaseToken')
echo "FB_TOKEN=${FB_TOKEN:0:30}..."

# 4. Validate with Identity Toolkit
API_KEY="AIzaSyBogTVMHBidx5UQmbyFgti_pTlKkPmmz_s"
echo "Validating with Google Identity Toolkit..."
curl -s -X POST "https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=$API_KEY" \
     -H "Content-Type: application/json" \
     -d "{\"token\":\"$FB_TOKEN\",\"returnSecureToken\":true}"

#!/bin/bash
RESPONSE=$(curl -s -X POST http://localhost:8080/auth/login -H "Content-Type: application/json" -d '{"email":"paciente1@amani.com","password":"123"}')
echo "Login Response: $RESPONSE"
TOKEN=$(echo "$RESPONSE" | grep -o '"token":"[^"]*' | grep -o '[^"]*$')
echo "JWT Token: $TOKEN"
echo "Fetching Firebase Token..."
curl -s -v -X GET http://localhost:8080/api/auth/firebase-token -H "Authorization: Bearer $TOKEN"

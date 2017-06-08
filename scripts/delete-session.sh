#!/bin/bash
TOKEN=BAhJIiVkMTg3NTI4NTg1ZTZhZTBlYzA3ZjVjMjUxMDA4MWYzNQY6BkVG--2d703b58d29d0133ed9a42043c59ded2502a6f44
ID=70

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sessions"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo

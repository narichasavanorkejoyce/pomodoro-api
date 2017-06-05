#!/bin/bash
TOKEN=BAhJIiU5MTFhYTliZWFlNmQzNzRlZjAwYzdiMjJlNzQ1ZGE4NAY6BkVG--bd22c088d51e389f086005c11377ff6634fdc4ac
ID=1
NPOMS=4

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sessions"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "session": {
      "n_pomodoro": "'"${NPOMS}"'"
    }
  }'

echo

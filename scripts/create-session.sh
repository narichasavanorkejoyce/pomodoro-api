#!/bin/bash
TOKEN=BAhJIiU5MTFhYTliZWFlNmQzNzRlZjAwYzdiMjJlNzQ1ZGE4NAY6BkVG--bd22c088d51e389f086005c11377ff6634fdc4ac
TEXT=capstone
NPOMS=1

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sessions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "session": {
      "session_name": "'"${TEXT}"'",
      "n_pomodoro": "'"${NPOMS}"'"
    }
  }'

echo

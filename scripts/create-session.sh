#!/bin/bash
TOKEN=BAhJIiU5ZmI4MmQ0Zjc0NDI2M2RjOTk0NjBiNDE4MWEzOWM2NgY6BkVG--954ae37b8f9f0c72ba31acee5ac84438c2bdbc41
TEXT=ember
NPOMS=.0001

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

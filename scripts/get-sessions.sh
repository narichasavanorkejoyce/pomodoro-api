#!/bin/bash
TOKEN=BAhJIiU5MTFhYTliZWFlNmQzNzRlZjAwYzdiMjJlNzQ1ZGE4NAY6BkVG--bd22c088d51e389f086005c11377ff6634fdc4ac

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sessions"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo

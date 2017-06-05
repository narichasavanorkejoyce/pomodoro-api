#!/bin/bash
ID=1
TOKEN=BAhJIiU3MTRlMmNmYjU5N2U2NjVmOTc1ZTBhMTllYzI1ZTZlZAY6BkVG--fb64bb37267286432abb637b328fc811ebdedb42

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

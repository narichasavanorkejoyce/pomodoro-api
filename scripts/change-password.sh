#!/bin/bash
TOKEN=BAhJIiU3MTRlMmNmYjU5N2U2NjVmOTc1ZTBhMTllYzI1ZTZlZAY6BkVG--fb64bb37267286432abb637b328fc811ebdedb42
ID=1
OLDPW=test
NEWPW=test2

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/change-password"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo

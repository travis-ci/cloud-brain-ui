#!/bin/bash

sso -listen ":$PORT" \
    -upstream 'http://127.0.0.1:5000' \
    -app "$SSO_APP_PUBLIC_URL" \
    -static-path 'sso-assets/static'
    -template-path 'sso-assets/template'
    -encryption-key "$SSO_ENCRYPTION_KEY" \
    -csrf-key "$SSO_CSRF_KEY" \
    -authorized-users "$SSO_AUTHORIZED_USERS" &
workwebui -redis $REDIS_URL -ns cloud-brain:worker -listen :5000

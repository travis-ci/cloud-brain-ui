web: start-nginx -f start-stunnel bash -c '(sleep 1; socat tcp4-connect:127.0.0.1:$PORT unix-listen:/tmp/nginx.socket &); workwebui -redis $REDIS_URL -ns cloud-brain:worker -listen :$PORT'

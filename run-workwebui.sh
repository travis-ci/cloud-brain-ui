#!/bin/bash

workwebui -redis $REDIS_URL -ns cloud-brain:worker -listen 127.0.0.1:5000

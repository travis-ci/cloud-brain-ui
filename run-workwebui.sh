#!/bin/bash

workwebui -redis $REDIS_URL -ns cloud-brain:worker -listen :5000

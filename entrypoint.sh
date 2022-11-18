#!/bin/bash
rm -f /myapp/tmp/pids/server.pid
rails server -b 0.0.0.0

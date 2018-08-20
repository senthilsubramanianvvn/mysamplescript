#!/bin/bash
sudo su - $1
echo "Running as user $1"
whoami && date && id $1

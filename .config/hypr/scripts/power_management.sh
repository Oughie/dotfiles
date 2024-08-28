#!/bin/bash

# Suspend after 7 minutes of inactivity

swayidle -w \
    timeout 420 'systemctl suspend-then-hibernate'

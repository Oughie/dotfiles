#!/bin/bash

swayidle -w \
    timeout 300 'systemctl suspend-then-hibernate'

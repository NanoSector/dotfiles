#!/bin/bash

git branch --merged | grep -Pv "^[* ] (?:master|main)\$" >/tmp/merged-branches && \
  micro /tmp/merged-branches && xargs git branch -d </tmp/merged-branches

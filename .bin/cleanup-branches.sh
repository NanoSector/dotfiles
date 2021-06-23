#!/bin/bash

git branch --merged >/tmp/merged-branches && \
  micro /tmp/merged-branches && xargs git branch -d </tmp/merged-branches

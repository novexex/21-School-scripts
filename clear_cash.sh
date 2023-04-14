#!/bin/bash
echo '----------------------'
echo 'Size  Used  Avail'
echo '----------------------'
df -h | grep Users | awk '{print $2 " = " $3 " + " $4}'
rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
rm -rf ~/Library/Application\ Support/Slack/Cache/
rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
rm -rf ~/Library/42_cache/
rm -rf ~/Library/Caches/*
rm -rf ~/.Trash/*
 rm -rf ~/Library/homebrew/*
rm -rf ~/Library/Containers/*
rm -rf /Users/padmemur/Library/Application\ Support/Code/User/workspaceStorage/*
rm -rf ~Library/Application Support/Code/CachedData
rm -rf ~Library/Application Support/Code/Crashpad

df -h | grep Users | awk '{print $2 " = " $3 " + " $4}'
echo '----------------------'

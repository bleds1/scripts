#!/usr/bin/env bash

mbsync -a && notify-send "📩  Syncing mail.."

wait

notmuch new --quiet 

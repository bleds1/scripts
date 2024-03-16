#!/usr/bin/env bash

mbsync -a && notify-send "📩  Syncing mail.."

wait

notmuch new --quiet 

wait

notmuch tag -inbox +sent -- from:stevebeadle@posteo.com

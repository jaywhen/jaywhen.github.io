#!bin/sh
git add .
msg="rebuilding site $(data)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"
git push origin main

#!/bin/bash
OPTS=/data/options.json
mkdir -p "$HOME/.config/tigervnc"

PW=$(jq -r 'if .password == null or .password == "" then "" else (.password | tostring) end' "$OPTS")
REQ=$(jq -r '.require_password | if . == null then "unset" elif . then "true" else "false" end' "$OPTS")

use_vnc_auth() {
  printf '%s' "$PW" | vncpasswd -f >"$HOME/.config/tigervnc/passwd"
  exec x0vncserver -PasswordFile "$HOME/.config/tigervnc/passwd" -display :0 -SecurityTypes=VncAuth
}

if [ "$REQ" = "true" ]; then
  if [ -n "$PW" ]; then
    use_vnc_auth
  fi
  echo "HAVNC: Require password is on but password is empty; starting without VNC password." >&2
elif [ "$REQ" = "false" ]; then
  : # explicit no password
else
  # require_password not in saved options (upgrade): keep old behavior if a password was set
  if [ -n "$PW" ]; then
    use_vnc_auth
  fi
fi

exec x0vncserver -display :0 -SecurityTypes=None

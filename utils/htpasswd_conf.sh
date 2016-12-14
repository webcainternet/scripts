cat << EndOfMessage


AuthUserFile /var/www/html/public/.htpasswd
AuthType Basic
AuthName "Restrito"
Require valid-user
EndOfMessage

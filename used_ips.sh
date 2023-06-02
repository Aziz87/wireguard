grep '^[ ]*AllowedIPs[ ]*=' config/wg0.conf| awk -F '[ /]' '{print $3}' | sort -n | uniq -c | awk '$1!=256  {print ""$2""}' 

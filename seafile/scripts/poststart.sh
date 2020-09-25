sed -i "s+SERVICE_URL = http:.*+SERVICE_URL = https://$SEAFILE_SERVER_HOSTNAME+" /shared/seafile/conf/ccnet.conf
sed -i "s+FILE_SERVER_ROOT = \"http:.*+FILE_SERVER_ROOT = \"https://$SEAFILE_SERVER_HOSTNAME/seafhttp\"+" /shared/seafile/conf/seahub_settings.py

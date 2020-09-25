while [ ! -f /shared/seafile/conf/ccnet.conf ]; do sleep 1; done
sed -i "s+SERVICE_URL = http:.*+SERVICE_URL = $SEAFILE_SERVER_SCHEME://$SEAFILE_SERVER_HOSTNAME+" /shared/seafile/conf/ccnet.conf
sed -i "s+FILE_SERVER_ROOT = \"http:.*+FILE_SERVER_ROOT = \"$SEAFILE_SERVER_SCHEME://$SEAFILE_SERVER_HOSTNAME/seafhttp\"+" /shared/seafile/conf/seahub_settings.py

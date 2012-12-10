#!/sbin/sh
#
# Install hwui
#

mkdir /data/local/hwui.deny/
chown system nobody /data/local/hwui.deny
chmod 0775 /data/local/hwui.deny
touch /data/local/hwui.deny/com.android.email
touch /data/local/hwui.deny/com.facebook.katana
touch /data/local/hwui.deny/com.google.android.gm

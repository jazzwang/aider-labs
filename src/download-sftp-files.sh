#!/bin/bash
if [ $# -lt 2 ]; then
  echo "Usage: $0 REMOTE_DIR LOCAL_DIR [YYYYmmdd]"
  exit 1
fi

mkdir -p $2

REMOTE_DIR="$1"
LOCAL_DIR="$2"
if [ "$3" == "" ]; then
  DATE=$(date +%Y%m%d)
else
  DATE=$3
fi
FILE_PATTERN="*_${DATE}*"

## Note: SFTP_USER and SFTP_HOST are defined from environment variables
sftp "$SFTP_USER@$SFTP_HOST" << EOF
cd ${REMOTE_DIR}
mget ${FILE_PATTERN} ${LOCAL_DIR}
bye
EOF

echo "Downloaded files matching '$FILE_PATTERN' to '$LOCAL_DIR'"
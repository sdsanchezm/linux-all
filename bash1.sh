#!/bin/bash
echo "hello there"
CWD=$(pwd)
FECHA=$(date +"%F%T")
#FECHA=$(date)
echo $FECHA

df -h | grep /dev > uso_disco_"$FECHA".txt
df -h | grep /dev/sda >> uso_disco_"$FECHA".txt

echo "information saved successfully! in $(CWD)"

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/usr/bin

## This is in case there is an error, immediately stops
set -e

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
readonly SCRIPT_NAME="$(basename "$0")"

run
make_backup

function log_error {
    local readonly message "$1"
    log "ERROR" "$message"
}

function  log {
	local readonly level="$1"
	local readonly message="$2"
	local readonly timestamp=$(date +"%Y-%m-%d %H:%M:%S") >&2 echo -e "${timestamp} [${level}] [$SCRIPT_NAME] ${message}"
}

function assert_is_installed {
    local readonly name="$1"
    if [[ ! $(command -v ${name}) ]]; then
        log_error "the binary '$name' is not in the system."
    exit 1
    fi
}

function run {
    assert_is_installed "mysql"
    assert_is_installed "mysqldump"
    assert_is_installed "gzip"
    assert_is_installed "aws"
}

function make_backup {
    local BAK="$(echo )"
    local MYSQL="$()"
    local MYSQLDUMP="$()"
    local GZIP="$()"
    local NOW="$(date + "")"
}














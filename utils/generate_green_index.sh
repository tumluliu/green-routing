#!/usr/bin/env bash
RAW_GREEN_FILE=$1
ORS_GREEN_FILE=$2
echo "osm_id,ungreen_factor" > $ORS_GREEN_FILE
NUM_OF_RECORDS="$(wc -l $RAW_GREEN_FILE | awk '{print $1'})"
NUM_OF_RECORDS=$((NUM_OF_RECORDS-1))
echo "${NUM_OF_RECORDS}"
tail -n "$NUM_OF_RECORDS" $RAW_GREEN_FILE | awk -f ./green_index_parser.awk >> $ORS_GREEN_FILE

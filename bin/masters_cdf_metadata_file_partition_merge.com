
METADATA_FILE_NAME_OLD=$1

METADATA_FILE_NAME_NEW=$2

METADATA_FILE_NAME_OUTPUT=$3

if [ -e $METADATA_FILE_NAME_OUTPUT ]; then rm $METADATA_FILE_NAME_OUTPUT; fi

masters_cdf_metadata_file_partition_write.com $METADATA_FILE_NAME_NEW $METADATA_FILE_NAME_OUTPUT FILE_HEADER

masters_cdf_metadata_file_partition_write.com $METADATA_FILE_NAME_OLD $METADATA_FILE_NAME_OUTPUT GLOBAL_ATTRIBUTE

masters_cdf_metadata_file_partition_write.com $METADATA_FILE_NAME_NEW $METADATA_FILE_NAME_OUTPUT VARIABLE_ATTRIBUTE

masters_cdf_metadata_file_partition_write.com $METADATA_FILE_NAME_NEW $METADATA_FILE_NAME_OUTPUT VARIABLE_INFORMATION

masters_cdf_metadata_file_partition_write.com $METADATA_FILE_NAME_NEW $METADATA_FILE_NAME_OUTPUT VARIABLE_METADATA

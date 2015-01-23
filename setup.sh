read -p "Please provide the keyspace name:" keyspace
read -p "Please provide the field name of partition key:" partition_fieldname
read -p "Please provide column family name:" columnfamily
read -p "Please provide field names for SELECT statement. Separated by commas:" select_statement

printf "USE $keyspace; SELECT $partition_fieldname FROM $columnfamily LIMIT 1;" > get_1st_token.cql
printf "USE $keyspace; SELECT $partition_fieldname FROM $columnfamily WHERE token($partition_fieldname) > token(###TOKEN###) LIMIT 1;" > get_next_token.cql
printf "USE $keyspace; SELECT $select_statement FROM $columnfamily WHERE $partition_fieldname=###TOKEN###;" > get_page.cql

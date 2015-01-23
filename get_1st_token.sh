fname_result="tmp_result.txt"
fname_current_token="token_current.txt"

# Get 1st token
cat get_1st_token.cql | cqlsh -u $1 -p $2 $3 > $fname_result
python get_token.py $fname_result > $fname_current_token
#current_token=$(cat $fname_current_token)
#echo $current_token

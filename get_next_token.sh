fname_result="tmp_result.txt"
fname_current_token="token_current.txt"

current_token=$(cat $fname_current_token)
query=$(cat get_next_token.cql)
echo ${query//###TOKEN###/$current_token} | cqlsh -u $1 -p $2 $3 > $fname_result
python get_token.py $fname_result > $fname_current_token

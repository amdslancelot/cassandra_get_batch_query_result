fname_result="tmp_result.txt"
fname_current_token="token_current.txt"

# Get token
current_token=$(cat $fname_current_token)

# Get page
query=$(cat get_page.cql)
#echo ${query//###TOKEN###/$current_token}
echo ${query//###TOKEN###/$current_token} | cqlsh -u $1 -p $2 $3 > $fname_result
python select_result_to_csv.py $fname_result

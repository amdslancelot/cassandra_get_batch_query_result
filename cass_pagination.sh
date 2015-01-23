fname_final_csv="merged_result.csv"
echo "categoryid,productfilterid,datefilterid,productid,categorydescription,categoryname,enddate,startdate" > $fname_final_csv

fname_current_token="token_current.txt"

bash get_1st_token.sh $1 $2 $3
current_token=$(cat $fname_current_token)
printf "Retrieving result for first token($current_token)....."

bash get_page_convert_csv.sh $1 $2 $3 >> $fname_final_csv
printf "done\n"

bash get_next_token.sh $1 $2 $3
current_token=$(cat $fname_current_token)
printf "Retrieving result for next token($current_token)....."

while [ "$current_token" != "" ] && [ ! -z "$current_token" ]; do
    bash get_page_convert_csv.sh $1 $2 $3 >> $fname_final_csv
    printf "done\n"
    
    bash get_next_token.sh $1 $2 $3
    current_token=$(cat $fname_current_token)
    printf "Retrieving result for next token($current_token)....."
done

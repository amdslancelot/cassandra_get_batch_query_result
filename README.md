Batch Get Cassandra Query Result And Convert To CSV
========

Set-Up
----

* 1) Run setup.sh:
`bash setup.sh`

* 2) This command is going to ask you to provide some information about your Cassandra ex: keyspace, column family, partition key, 
     in order to generate particular .cql files.



Execute
----

* Run cass_pagination.sh:
`bash cass_pagination.sh (cassandra username) (cassandra password) (cassandra server ip)`

#### Output

Retrieving result for first token(27d525ac-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5f928-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d515b2-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d55a36-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d54802-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d532a4-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5455a-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5ef32-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d61688-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d602b0-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5cb92-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5d3ee-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d51fe4-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d4f5aa-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5b9d6-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5c46c-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token(27d5cdf4-3561-11e4-bb0f-164230d1df67).....done

......

Retrieving result for next token(27d5b76a-3561-11e4-bb0f-164230d1df67).....done
Retrieving result for next token().....

* You can see in the last line Cassandra doesn't return the next token(partition key), so the job finished successfully.

* All the batch results are merged into the file: merged_result.csv

#!/usr/bin/python3

import logging 
import boto3 

s3 = boto3.client('s3', region_name='us-east-1') 

# upload a file to the bucket 

bucket='ds2002-hdj3fw'
local_file='/Users/averydonmoyer/Downloads/them-snapshots-40U4YEffPgE-unsplash.jpg'

resp=s3.put_object(
	Body=local_file, 
	Bucket=bucket, 
	Key=local_file) 

# create a presigned url 
bucket_name = ds2002_hdj3fw
object_name = my_gif 
expires_in = 604800 

response=s3.generate_presigned_url( 
	'get_object', 
	Params={'Bucket': bucket_name, 'Key': object_name}, 
	ExpiresIn=expires_in 
	) 

print(response) 


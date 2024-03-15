#!/bin/bash 

curl https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExOTBza2dtc3Vxemp2NWo3eWZ3cmNnNjl6MWNreXZyYmkyeTBqcWlsdyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l378juKkfz46yumQw/giphy.gif > trisha

aws s3 cp trisha s3://ds2002-hdj3fw

aws s3 presign --expires-in 604800 s3://ds2002-hdj3fw/trisha

echo https://ds2002-hdj3fw.s3.amazonaws.com/trisha?AWSAccessKeyId=AKIATCKARYADVJN6RKKY&Signature=zvjw83jnC9oESthWcnpSQlUlJxE%3D&Expires=1711141489 

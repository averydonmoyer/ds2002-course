#!/bin/bash 

curl media.distractify.com/brand-img/uq6IB4wkF/0x0/trisha-paytas-family-1700624791023.jpg > trisha

aws s3 cp trisha s3://ds2002-hdj3fw

aws s3 presign --expires-in 604800 s3://ds2002-hdj3fw/trisha

echo https://ds2002-hdj3fw.s3.amazonaws.com/trisha?AWSAccessKeyId=AKIATCKARYADVJN6RKKY&Signature=B1U8J%2B4voXofaJb9O4CDa8%2BM%2Bw8%3D&Expires=1711133037

# **AWS S3**

Here's my notes when working with the AWS S3.

## **Sync the AWS S3 Bucket to Local Directory**

Here's the command to sync the directory localy.

    $ aws s3 sync ${bucket_directory_file} ${local_directory}

For example:

    $ aws s3 sync s3://sagemaker-pac-ntx/NER-Project/model/ model
# Start Working with AWS

Don't forget to install and configure CLI using the file in `install-aws-cli-2.sh`. If AWS CLI already configured you can connect to the AWS service throgh your CLI such as Terminal or WSL.

## Get Account Identity

Before working with some service such as **AWS ECS** or **S3** which is request the `aws_account_id` and the `region`, here's the command to get that parameters: 

To get the `aws_account_id`:

    $ aws sts get-caller-identity --query Account --output text

To get the `region`:

    $ aws configure get region

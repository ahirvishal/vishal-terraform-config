# Terraform Organization Config Services and Rules

## Pre-requisites

1) Create the S3 bucket. This will store the state file when a 'terraform apply' is executed after backend initialization has succeeded.

2) Modify the backend.tf.

  a) Adjust the following parameters:

  | Name | Description | 
  |------|-------------|
  | key | This will be the path of your Terraform state file. |
  | bucket | The Amazon S3 bucket that the Terraform state file will be deployed to and referenced. |
  | region | The region of the S3 bucket |
  | access_key | Accesskey that we can get from AWS account. |
  | secret_key | Secretkey that we can get from AWS account. |

```
terraform {
    backend "s3" {
        key            = ENTER_DESIRED_STATE_FILE_NAME
        bucket         = ENTER_S3_BUCKET
        region         = ENTER_REGION
        access_key     = ENTER_ACCESS_KEY
        secret_key     = ENTER_SECRET_KEY
    }
}
```

When the correct values are put in place for each parameter, and you run a terraform init, this will initialize the backend on the first run. The Terraform state file will create once resources are created. On subsequent initialization (terraform init) runs, a connection will be made to the state file. 

## Running Terraform stack

```
14:27 $ terraform init
Initializing modules...

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 2.66"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

From there, once our current working directory is initialized, we can run a ```terraform plan``` and ```terraform apply```.
This will start to process and create all the resources, along with our authorizaiton as indicated below:

```
module.us-east-1.aws_config_delivery_channel.config_channel: Creation complete after 3s [id=default]
module.us-east-1.aws_config_configuration_recorder_status.config_recorder_status: Creating...
module.us-east-2.aws_config_configuration_recorder_status.config_recorder_status: Creation complete after 1s [id=default]
module.us-east-1.aws_config_configuration_recorder_status.config_recorder_status: Creation complete after 1s [id=default]

Apply complete! Resources: 17 added, 0 changed, 0 destroyed.
```

```
Outputs:

config_aggregator_arn = arn:aws:config:us-east-1:725369550382:config-aggregator/config-aggregator-ko9sdsa
```
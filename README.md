## The code for the below task has been refactored and is now available at:
[tf-lambda-in-vpc-api-gateway](https://github.com/lintopaul/tf-lambda-in-vpc-api-gateway)

### Task ###

Terraform config for launching the following:

I.  A lambda on vpc with a simple helloworld.js - inline zip file for code, no s3 dependencies.

II. API gateway frontending the lambda

And then, add couple testcases in the scripting language of your choice to verify the resources from step I and II.

## Notes ##
The code currently has a bug where the lambda is not associated with the vpc that gets created. 
This will be looked into later for implementation without using terraform modules.
# terraform-dev-infra

First creating resources with the child modules like vpc and security groups.

Then calling the child modules using root modules like vpc and sg.
- the child modules are having some variables created and we access them from the root modules in the modules block
- these variables can also be called as arguments of to the root module and we pass the values to those arguements
- from the root module, then it will create the resources as defined in the child modules.
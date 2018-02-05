# Moip Configuration Management Challenge

Your task is to manage the state of a node using configuration management.

Your configuration should be able to:

1. Manage a web server (tomcat, jetty, jboss, your choice) installed and started at port 8080
1. Have a WAR file deployed to that web server
1. Write meaningful unit and integration tests 


You can pick the configuration management tool from the above list:

1. Puppet
1. Chef
1. Ansible

Keep in mind, an evaluator will check out your repository and will review:

1. Code design
1. Best practices
1. Your tests

The evaluator will execute your code and it should be able to see the that the war file is deployed and running.

Requirements
------------

The war file can be reached at `/assets/java-chef-test.war`
The test page for the WAR file should be:

http://<host>:8080/java-artifact-chef-test/chef/ping

Tests should show that this page is reachable and is specific to the content the test page sends back.

You should provide a way to test your code. You can pick the tool, `kitchen`, `molecule`, `vagrant`, `docker`...

Starting the Test
----------------
There is one branch for each configuration management tool.

If you wanna write your test using chef: `git checkout chef`

The branch contains an empty structure inside folder `devops-challenge`.

You should work **inside that folder**.

## Delivery Instructions

1. You must provide your GitHub username. A free GitHub account can be created at https://github.com
1. The recruiter will give you read permission to a repository named **devops-challenge**, at https://github.com/moip/devops-challenge.git
1. You must fork this repository into a private repository on your own account and push your code in the config management
branch you've picked.
1. Once finished, you must give the user **ac-recruitment** read permission on your repository so that you can be evaluated. Then, please contact back your recruiter and he will get an engineer to evaluate your test.
1. After you are evaluated, the recruiter will remove your read permission from the original repository.

## Format

* You must be prepared to walk an evaluator through all the created artifacts including tests
    * Mention anything that was asked but not delivered and why, and any additional comments.
* Any questions, please send an email to **recruitment.engineering@moip.com.br**

Thank you,
The Moip Recruiting Team

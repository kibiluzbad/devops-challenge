# devops-challenge

## Pre requisites
You must have docker and chefdk installed on your system.

## Install dependencies
Execute: 

```bash
berks install
```

## Run unit tests
Execute: 

```bash
chef exec rspec
```

## Run integration tests
First check kitchen suites: 

```bash
kitchen list
```

You'll see default-centos-7 not created

Create centos instance by running:

```bash
kitchen create
```

If you check kitchen list now centos instance will appear as created.

Now you must run chef recipe, executing:

```bash
kitchen converge
```

It may take some time since this recipe will download stuff from internet. If you have any connection issues check your firewall.

After that we can check if centos instance is correctly set by running:

```bash
kitchen verify
```

If everything is OK you should get the following message:

```bash
Test Summary: 3 successful, 0 failures, 0 skipped
```

Now you can destroy this instance by running:

```bash
kitchen destroy
```



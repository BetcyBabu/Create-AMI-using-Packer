# Create Amazon Machine Image (AMI) using Packer

Packer is a lightweight, open source tool for building machine images across multiple platforms, including AWS, Azure, and GCP, work on all major operating systems.

## Objective

- Write a HCL file to be used with Packer (ami.pkr.hcl)
- Create a bash script to install the required softwares (git.sh)
- Run Packer to create our AMI

## Prerequisites

- [AWS Access Key and Secret Key](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
- Select an existing AMI on Amazon to use as your base image to change
- [Install Packer](https://learn.hashicorp.com/tutorials/packer/get-started-install-cli?in=packer/aws-get-started)

## Usage

[Install Git](https://github.com/git-guides/install-git)

```
git clone https://github.com/BetcyBabu/packer.git
cd packer
packer build ami.pkr.hcl
```

This creates a new EC2 instanced based on source_ami, software provisioning, stops the instance, creates an AMI based on the new event, and then terminates the EC2 instance.

## Result

```
PS C:\Users\HP\Desktop\Packer> packer build  .\ami.pkr.hcl
amazon-ebs.example: output will be in this color.

==> amazon-ebs.example: Prevalidating any provided VPC information
==> amazon-ebs.example: Prevalidating AMI Name: packer_AWS_example_1638473112
    amazon-ebs.example: Found Image ID: ami-0108d6a82a783b352
==> amazon-ebs.example: Creating temporary keypair: packer_61a91d99-0b8a-174a-6553-e8ff6b09c490
==> amazon-ebs.example: Creating temporary security group for this instance: packer_61a91d9a-c84d-1141-bfc1-10c8299d4943
==> amazon-ebs.example: Authorizing access to port 22 from [0.0.0.0/0] in the temporary security groups...
==> amazon-ebs.example: Launching a source AWS instance...
==> amazon-ebs.example: Adding tags to source instance      
    amazon-ebs.example: Adding tag: "Name": "Packer Builder"
    amazon-ebs.example: Instance ID: i-0228bb87534cb829f
==> amazon-ebs.example: Waiting for instance (i-0228bb87534cb829f) to become ready...
==> amazon-ebs.example: Using SSH communicator to connect: 3.110.212.196
==> amazon-ebs.example: Waiting for SSH to become available...
==> amazon-ebs.example: Connected to SSH!
==> amazon-ebs.example: Provisioning with shell script: git.sh
    amazon-ebs.example: Loaded plugins: extras_suggestions, langpacks, priorities, update-motd
    amazon-ebs.example: Resolving Dependencies
    amazon-ebs.example: --> Running transaction check
    amazon-ebs.example: ---> Package git.x86_64 0:2.32.0-1.amzn2.0.1 will be installed
    amazon-ebs.example: --> Processing Dependency: perl-Git = 2.32.0-1.amzn2.0.1 for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: git-core-doc = 2.32.0-1.amzn2.0.1 for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: git-core = 2.32.0-1.amzn2.0.1 for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: emacs-filesystem >= 27.1 for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: perl(Term::ReadKey) for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: perl(Git::I18N) for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: --> Processing Dependency: perl(Git) for package: git-2.32.0-1.amzn2.0.1.x86_64
    amazon-ebs.example: ---> Package httpd.x86_64 0:2.4.51-1.amzn2 will be installed
    amazon-ebs.example: --> Processing Dependency: httpd-tools = 2.4.51-1.amzn2 for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: httpd-filesystem = 2.4.51-1.amzn2 for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: system-logos-httpd for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: mod_http2 for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: httpd-filesystem for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: /etc/mime.types for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: libaprutil-1.so.0()(64bit) for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: --> Processing Dependency: libapr-1.so.0()(64bit) for package: httpd-2.4.51-1.amzn2.x86_64
    amazon-ebs.example: ---> Package php.x86_64 0:5.4.16-46.amzn2.0.2 will be installed
    amazon-ebs.example: --> Processing Dependency: php-cli(x86-64) = 5.4.16-46.amzn2.0.2 for package: php-5.4.16-46.amzn2.0.2.x86_64
    amazon-ebs.example: --> Processing Dependency: php-common(x86-64) = 5.4.16-46.amzn2.0.2 for package: php-5.4.16-46.amzn2.0.2.x86_64
    amazon-ebs.example: --> Running transaction check
    amazon-ebs.example: ---> Package apr.x86_64 0:1.7.0-9.amzn2 will be installed
    amazon-ebs.example: ---> Package apr-util.x86_64 0:1.6.1-5.amzn2.0.2 will be installed
    amazon-ebs.example: --> Processing Dependency: apr-util-bdb(x86-64) = 1.6.1-5.amzn2.0.2 for package: apr-util-1.6.1-5.amzn2.0.2.x86_64
    amazon-ebs.example: ---> Package emacs-filesystem.noarch 1:27.2-4.amzn2.0.1 will be installed
    amazon-ebs.example: ---> Package generic-logos-httpd.noarch 0:18.0.0-4.amzn2 will be installed
    amazon-ebs.example: ---> Package git-core.x86_64 0:2.32.0-1.amzn2.0.1 will be installed
    amazon-ebs.example: ---> Package git-core-doc.noarch 0:2.32.0-1.amzn2.0.1 will be installed
    amazon-ebs.example: ---> Package httpd-filesystem.noarch 0:2.4.51-1.amzn2 will be installed
    amazon-ebs.example: ---> Package httpd-tools.x86_64 0:2.4.51-1.amzn2 will be installed
    amazon-ebs.example: ---> Package mailcap.noarch 0:2.1.41-2.amzn2 will be installed
    amazon-ebs.example: ---> Package mod_http2.x86_64 0:1.15.19-1.amzn2.0.1 will be installed
    amazon-ebs.example: ---> Package perl-Git.noarch 0:2.32.0-1.amzn2.0.1 will be installed
    amazon-ebs.example: --> Processing Dependency: perl(Error) for package: perl-Git-2.32.0-1.amzn2.0.1.noarch
    amazon-ebs.example: ---> Package perl-TermReadKey.x86_64 0:2.30-20.amzn2.0.2 will be installed
    amazon-ebs.example: ---> Package php-cli.x86_64 0:5.4.16-46.amzn2.0.2 will be installed
    amazon-ebs.example: ---> Package php-common.x86_64 0:5.4.16-46.amzn2.0.2 will be installed
    amazon-ebs.example: --> Processing Dependency: libzip.so.2()(64bit) for package: php-common-5.4.16-46.amzn2.0.2.x86_64
    amazon-ebs.example: --> Running transaction check
    amazon-ebs.example: ---> Package apr-util-bdb.x86_64 0:1.6.1-5.amzn2.0.2 will be installed
    amazon-ebs.example: ---> Package libzip010-compat.x86_64 0:0.10.1-9.amzn2.0.5 will be installed
    amazon-ebs.example: ---> Package perl-Error.noarch 1:0.17020-2.amzn2 will be installed
    amazon-ebs.example: --> Finished Dependency Resolution
    amazon-ebs.example:
    amazon-ebs.example: Dependencies Resolved
    amazon-ebs.example:
    amazon-ebs.example: ================================================================================
    amazon-ebs.example:  Package                Arch      Version                   Repository     Size
    amazon-ebs.example: ================================================================================
    amazon-ebs.example: Installing:
    amazon-ebs.example:  git                    x86_64    2.32.0-1.amzn2.0.1        amzn2-core    126 k
    amazon-ebs.example:  httpd                  x86_64    2.4.51-1.amzn2            amzn2-core    1.3 M
    amazon-ebs.example:  php                    x86_64    5.4.16-46.amzn2.0.2       amzn2-core    1.4 M
    amazon-ebs.example: Installing for dependencies:
    amazon-ebs.example:  apr                    x86_64    1.7.0-9.amzn2             amzn2-core    122 k
    amazon-ebs.example:  apr-util               x86_64    1.6.1-5.amzn2.0.2         amzn2-core     99 k
    amazon-ebs.example:  apr-util-bdb           x86_64    1.6.1-5.amzn2.0.2         amzn2-core     19 k
    amazon-ebs.example:  emacs-filesystem       noarch    1:27.2-4.amzn2.0.1        amzn2-core     67 k
    amazon-ebs.example:  generic-logos-httpd    noarch    18.0.0-4.amzn2            amzn2-core     19 k
    amazon-ebs.example:  git-core               x86_64    2.32.0-1.amzn2.0.1        amzn2-core    4.8 M
    amazon-ebs.example:  git-core-doc           noarch    2.32.0-1.amzn2.0.1        amzn2-core    2.7 M
    amazon-ebs.example:  httpd-filesystem       noarch    2.4.51-1.amzn2            amzn2-core     24 k
    amazon-ebs.example:  httpd-tools            x86_64    2.4.51-1.amzn2            amzn2-core     88 k
    amazon-ebs.example:  libzip010-compat       x86_64    0.10.1-9.amzn2.0.5        amzn2-core     30 k
    amazon-ebs.example:  mailcap                noarch    2.1.41-2.amzn2            amzn2-core     31 k
    amazon-ebs.example:  mod_http2              x86_64    1.15.19-1.amzn2.0.1       amzn2-core    149 k
    amazon-ebs.example:  perl-Error             noarch    1:0.17020-2.amzn2         amzn2-core     32 k
    amazon-ebs.example:  perl-Git               noarch    2.32.0-1.amzn2.0.1        amzn2-core     43 k
    amazon-ebs.example:  perl-TermReadKey       x86_64    2.30-20.amzn2.0.2         amzn2-core     31 k
    amazon-ebs.example:  php-cli                x86_64    5.4.16-46.amzn2.0.2       amzn2-core    2.8 M
    amazon-ebs.example:  php-common             x86_64    5.4.16-46.amzn2.0.2       amzn2-core    563 k
    amazon-ebs.example:
    amazon-ebs.example: Transaction Summary
    amazon-ebs.example: ================================================================================
    amazon-ebs.example: Install  3 Packages (+17 Dependent packages)
    amazon-ebs.example:
    amazon-ebs.example: Total download size: 14 M
    amazon-ebs.example: Installed size: 60 M
    amazon-ebs.example: Downloading packages:
    amazon-ebs.example: --------------------------------------------------------------------------------
    amazon-ebs.example: Total                                               25 MB/s |  14 MB  00:00
    amazon-ebs.example: Running transaction check
    amazon-ebs.example: Running transaction test
    amazon-ebs.example: Transaction test succeeded
    amazon-ebs.example: Running transaction
    amazon-ebs.example:   Installing : apr-1.7.0-9.amzn2.x86_64                                    1/20
    amazon-ebs.example:   Installing : apr-util-bdb-1.6.1-5.amzn2.0.2.x86_64                       2/20
    amazon-ebs.example:   Installing : apr-util-1.6.1-5.amzn2.0.2.x86_64                           3/20
    amazon-ebs.example:   Installing : git-core-2.32.0-1.amzn2.0.1.x86_64                          4/20
    amazon-ebs.example:   Installing : git-core-doc-2.32.0-1.amzn2.0.1.noarch                      5/20
    amazon-ebs.example:   Installing : httpd-tools-2.4.51-1.amzn2.x86_64                           6/20
    amazon-ebs.example:   Installing : generic-logos-httpd-18.0.0-4.amzn2.noarch                   7/20
    amazon-ebs.example:   Installing : mailcap-2.1.41-2.amzn2.noarch                               8/20
    amazon-ebs.example:   Installing : 1:perl-Error-0.17020-2.amzn2.noarch                         9/20
    amazon-ebs.example:   Installing : libzip010-compat-0.10.1-9.amzn2.0.5.x86_64                 10/20
    amazon-ebs.example:   Installing : php-common-5.4.16-46.amzn2.0.2.x86_64                      11/20
    amazon-ebs.example:   Installing : php-cli-5.4.16-46.amzn2.0.2.x86_64                         12/20
    amazon-ebs.example:   Installing : httpd-filesystem-2.4.51-1.amzn2.noarch                     13/20
    amazon-ebs.example:   Installing : mod_http2-1.15.19-1.amzn2.0.1.x86_64                       14/20
    amazon-ebs.example:   Installing : httpd-2.4.51-1.amzn2.x86_64                                15/20
    amazon-ebs.example:   Installing : 1:emacs-filesystem-27.2-4.amzn2.0.1.noarch                 16/20
    amazon-ebs.example:   Installing : perl-TermReadKey-2.30-20.amzn2.0.2.x86_64                  17/20
    amazon-ebs.example:   Installing : perl-Git-2.32.0-1.amzn2.0.1.noarch                         18/20
    amazon-ebs.example:   Installing : git-2.32.0-1.amzn2.0.1.x86_64                              19/20
    amazon-ebs.example:   Installing : php-5.4.16-46.amzn2.0.2.x86_64                             20/20
    amazon-ebs.example:   Verifying  : apr-util-1.6.1-5.amzn2.0.2.x86_64                           1/20
    amazon-ebs.example:   Verifying  : git-2.32.0-1.amzn2.0.1.x86_64                               2/20
    amazon-ebs.example:   Verifying  : httpd-2.4.51-1.amzn2.x86_64                                 3/20
    amazon-ebs.example:   Verifying  : apr-util-bdb-1.6.1-5.amzn2.0.2.x86_64                       4/20
    amazon-ebs.example:   Verifying  : git-core-doc-2.32.0-1.amzn2.0.1.noarch                      5/20
    amazon-ebs.example:   Verifying  : perl-Git-2.32.0-1.amzn2.0.1.noarch                          6/20
    amazon-ebs.example:   Verifying  : perl-TermReadKey-2.30-20.amzn2.0.2.x86_64                   7/20
    amazon-ebs.example:   Verifying  : 1:emacs-filesystem-27.2-4.amzn2.0.1.noarch                  8/20
    amazon-ebs.example:   Verifying  : httpd-filesystem-2.4.51-1.amzn2.noarch                      9/20
    amazon-ebs.example:   Verifying  : php-5.4.16-46.amzn2.0.2.x86_64                             10/20
    amazon-ebs.example:   Verifying  : libzip010-compat-0.10.1-9.amzn2.0.5.x86_64                 11/20
    amazon-ebs.example:   Verifying  : git-core-2.32.0-1.amzn2.0.1.x86_64                         12/20
    amazon-ebs.example:   Verifying  : 1:perl-Error-0.17020-2.amzn2.noarch                        13/20
    amazon-ebs.example:   Verifying  : apr-1.7.0-9.amzn2.x86_64                                   14/20
    amazon-ebs.example:   Verifying  : mailcap-2.1.41-2.amzn2.noarch                              15/20
    amazon-ebs.example:   Verifying  : generic-logos-httpd-18.0.0-4.amzn2.noarch                  16/20
    amazon-ebs.example:   Verifying  : mod_http2-1.15.19-1.amzn2.0.1.x86_64                       17/20
    amazon-ebs.example:   Verifying  : php-common-5.4.16-46.amzn2.0.2.x86_64                      18/20
    amazon-ebs.example:   Verifying  : httpd-tools-2.4.51-1.amzn2.x86_64                          19/20
    amazon-ebs.example:   Verifying  : php-cli-5.4.16-46.amzn2.0.2.x86_64                         20/20
    amazon-ebs.example:
    amazon-ebs.example: Installed:
    amazon-ebs.example:   git.x86_64 0:2.32.0-1.amzn2.0.1          httpd.x86_64 0:2.4.51-1.amzn2
    amazon-ebs.example:   php.x86_64 0:5.4.16-46.amzn2.0.2
    amazon-ebs.example:
    amazon-ebs.example: Dependency Installed:
    amazon-ebs.example:   apr.x86_64 0:1.7.0-9.amzn2
    amazon-ebs.example:   apr-util.x86_64 0:1.6.1-5.amzn2.0.2
    amazon-ebs.example:   apr-util-bdb.x86_64 0:1.6.1-5.amzn2.0.2
    amazon-ebs.example:   emacs-filesystem.noarch 1:27.2-4.amzn2.0.1
    amazon-ebs.example:   generic-logos-httpd.noarch 0:18.0.0-4.amzn2
    amazon-ebs.example:   git-core.x86_64 0:2.32.0-1.amzn2.0.1
    amazon-ebs.example:   git-core-doc.noarch 0:2.32.0-1.amzn2.0.1
    amazon-ebs.example:   httpd-filesystem.noarch 0:2.4.51-1.amzn2
    amazon-ebs.example:   httpd-tools.x86_64 0:2.4.51-1.amzn2
    amazon-ebs.example:   libzip010-compat.x86_64 0:0.10.1-9.amzn2.0.5
    amazon-ebs.example:   mailcap.noarch 0:2.1.41-2.amzn2
    amazon-ebs.example:   mod_http2.x86_64 0:1.15.19-1.amzn2.0.1
    amazon-ebs.example:   perl-Error.noarch 1:0.17020-2.amzn2
    amazon-ebs.example:   perl-Git.noarch 0:2.32.0-1.amzn2.0.1
    amazon-ebs.example:   perl-TermReadKey.x86_64 0:2.30-20.amzn2.0.2
    amazon-ebs.example:   php-cli.x86_64 0:5.4.16-46.amzn2.0.2
    amazon-ebs.example:   php-common.x86_64 0:5.4.16-46.amzn2.0.2
    amazon-ebs.example:
    amazon-ebs.example: Complete!
==> amazon-ebs.example: Created symlink from /etc/systemd/system/multi-user.target.wants/httpd.service to /usr/lib/systemd/system/httpd.service.
==> amazon-ebs.example: Cloning into '/var/website'...
==> amazon-ebs.example: Stopping the source instance...
    amazon-ebs.example: Stopping instance
==> amazon-ebs.example: Waiting for the instance to stop...
==> amazon-ebs.example: Creating AMI packer_AWS_example_1638473112 from instance i-0228bb87534cb829f
    amazon-ebs.example: AMI: ami-09bf481e1b59a8e07
==> amazon-ebs.example: Waiting for AMI to become ready...
==> amazon-ebs.example: Skipping Enable AMI deprecation...
==> amazon-ebs.example: Terminating the source AWS instance...
==> amazon-ebs.example: Cleaning up any extra volumes...
==> amazon-ebs.example: No volumes to clean up, skipping
==> amazon-ebs.example: Deleting temporary security group...
==> amazon-ebs.example: Deleting temporary keypair...
Build 'amazon-ebs.example' finished after 3 minutes 37 seconds.

==> Wait completed after 3 minutes 37 seconds

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs.example: AMIs were created:
ap-south-1: ami-09bf481e1b59a8e07

PS C:\Users\HP\Desktop\Packer> 
```

## Validate Result

Log in to the aws console. Go to Services> EC2> Images> AMIs. Make sure you select the right aws region in the top right corner. You will see the the newly created AMI with 
AMI name starts with packer_AWS_example.








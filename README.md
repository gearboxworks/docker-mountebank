

![Gearbox](https://gearboxworks.github.io/assets/images/gearbox-logo.png)


# mountebank Docker container service for [Gearbox](https://github.com/gearboxworks/)


This is the repository for the [mountebank](https://github.com/mountebank) Docker container implemented for [Gearbox](https://github.com/gearboxworks/).

## MB

mountebank is the most capable open source service virtualization tool in existence, and will cure what ails you, guaranteed.


## Repository Info
GitHub commit: [![commit-date](https://img.shields.io/github/last-commit/gearboxworks/docker-mountebank?style=flat-square)](https://github.com/gearboxworks/docker-mountebank/commits/master)

GitHub release(latest): [![last-release-date](https://img.shields.io/github/release-date/gearboxworks/docker-mountebank)](https://github.com/gearboxworks/docker-mountebank/releases) [![last-release-date](https://img.shields.io/github/v/tag/gearboxworks/docker-mountebank?sort=semver)](https://github.com/gearboxworks/docker-mountebank/releases) [![release-state](https://github.com/gearboxworks/docker-mountebank/workflows/release/badge.svg?event=release)](https://github.com/gearboxworks/docker-mountebank/actions?query=workflow%3Arelease)


## Supported versions and respective Dockerfiles
| Service Website | Gear Name | GitHub Version | Docker Version | Docker Size | Docker Tags |
|:---------------:|:---------:|:--------------:|:--------------:|:-----------:|:-----------:|
| [mountebank](https://github.com/mountebank) | [gearbox.json](https://github.com/gearboxworks/docker-mountebank/blob/master/gearbox.json) | [![mountebank](https://img.shields.io/badge/mountebank-2.2.1-green.svg)](https://github.com/gearboxworks/docker-mountebank/releases/) | [![Docker Version](https://img.shields.io/docker/v/gearboxworks/mountebank/2.2.1)](https://hub.docker.com/repository/docker/gearboxworks/mountebank) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mountebank/2.2.1)](https://hub.docker.com/repository/docker/gearboxworks/mountebank/tags) | _([`2.2.1`, `2.2`](https://github.com/gearboxworks/docker-mountebank/blob/master/versions/2.2.1/DockerfileRuntime))_ |
| [mountebank](https://github.com/mountebank) | [gearbox.json](https://github.com/gearboxworks/docker-mountebank/blob/master/gearbox.json) | [![mountebank](https://img.shields.io/badge/mountebank-2.3.3-green.svg)](https://github.com/gearboxworks/docker-mountebank/releases/) | [![Docker Version](https://img.shields.io/docker/v/gearboxworks/mountebank/2.3.3)](https://hub.docker.com/repository/docker/gearboxworks/mountebank) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mountebank/2.3.3)](https://hub.docker.com/repository/docker/gearboxworks/mountebank/tags) | _([`2.3.3`, `2.3`](https://github.com/gearboxworks/docker-mountebank/blob/master/versions/2.3.3/DockerfileRuntime))_ |
| [mountebank](https://github.com/mountebank) | [gearbox.json](https://github.com/gearboxworks/docker-mountebank/blob/master/gearbox.json) | [![mountebank](https://img.shields.io/badge/mountebank-2.4.0-green.svg)](https://github.com/gearboxworks/docker-mountebank/releases/) | [![Docker Version](https://img.shields.io/docker/v/gearboxworks/mountebank/2.4.0)](https://hub.docker.com/repository/docker/gearboxworks/mountebank) | [![Docker Size](https://img.shields.io/docker/image-size/gearboxworks/mountebank/2.4.0)](https://hub.docker.com/repository/docker/gearboxworks/mountebank/tags) | _([`2.4.0`, `2.4`, `latest`](https://github.com/gearboxworks/docker-mountebank/blob/master/versions/2.4.0/DockerfileRuntime))_ |


* * *
## About this container.
A driving force behind [Gearbox](https://github.com/gearboxworks/) is to improve the user experience using software, and especially for software developers.

Our vision is to empower developers and other software users to quickly and easily use almost any version of a software service, command line tool or API without without first getting bogged down with installation and configuration.

In other words, our vision for [Gearbox](https://github.com/gearboxworks/) users is that software "**just works**".


## Using this container.
This container has been designed to work within the [Gearbox](https://github.com/gearboxworks/) framework.
However, due to the flexability of [Gearbox](https://github.com/gearboxworks/), it can be used outside of this framework.

There are two methods:


* * *
## Method 1: Using [Gearbox](https://github.com/gearboxworks/) launch
`launch` is a tool specifically designed to interact with a [Gearbox](https://github.com/gearboxworks/) Docker container.

It provides three important functional areas, without any Docker container learning curve:
- Install, uninstall services and applications as though it was native. **(Even multiple versions!)**
- Complete integration with [Gearbox](https://github.com/gearboxworks/) container commands with the host PC. **(Environment and filesystem.)**
- Allows control over [Gearbox](https://github.com/gearboxworks/) containers: stop, start, create, remove.
- Build, update, modify and release [Gearbox](https://github.com/gearboxworks/) images.
- The [Gearbox](https://github.com/gearboxworks/) container doesn't even have to be local. **(Great for team development.)**

It also provides a functional SSH daemon for connecting remotely as well as a standard set of common tools and utilities.

Further `launch` documentation can be [found here](https://github.com/gearboxworks/docker-template/blob/master/LAUNCH.md).


### Installing launch
`launch` is currently in beta testing and is included along with all [Gearbox](https://github.com/gearboxworks/) Docker repos.
Once out of beta, it will be included within the [Gearbox](https://github.com/gearboxworks/) installation package.

For now, simply download the standalone `launch` binary for your O/S.
- [Mac OSX 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Darwin/launch)
- [Linux 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Linux/launch)
- [Windows 64bit](https://github.com/gearboxworks/docker-template/raw/master/bin/Windows/launch)

This executable can be placed anywhere on your filesystem that is within your PATH environment variable.
(This is usually **/usr/local/bin**)

It's suggested to copy this binary to it's own directory

```
mkdir -p /usr/local/gearbox/bin
cp ./launch /usr/local/gearbox/bin
chmod a+x /usr/local/gearbox/bin/launch
```

and add this to your PATH.

```
echo 'PATH="/usr/local/gearbox/bin:${PATH}"' >> ~/.profile
```


### Running launch
There are many ways to call launch, either directly or indirectly.
Additionally, **all host environment variables will be imported into the container seamlessly**.
This allows a devloper to try multiple versions of software **as though they were installed locally**.

If a container is missing, it will be downloaded and created. Multiple versions can co-exist.

Install, create, and start the **latest** version of **mountebank** [Gearbox](https://github.com/gearboxworks/) container.

**./bin/launch install mountebank**

```
me@home:~ % ./bin/launch shell mountebank
Gearbox: Installing Gear 'mountebank:latest'.
Gearbox: Downloading Gear 'mountebank:latest'.
Gearbox: Pulling Gear mountebank:latest.
Gearbox: [==================================================>]  141.6MB/141.6MB
Gearbox: Pulling Gear mountebank:latest - OK.
Gearbox: Installed Gear 'mountebank:latest' OK.
me@home:~ 
```

Install, create, and start the **latest** version of **mountebank** [Gearbox](https://github.com/gearboxworks/) container. Run a shell.

**./bin/launch shell mountebank**

```
me@home:~ % ./bin/launch shell mountebank
Gearbox: Installing Gear 'mountebank:latest'.
Gearbox: Downloading Gear 'mountebank:latest'.
Gearbox: Pulling Gear mountebank:latest.
Gearbox: [==================================================>]  141.6MB/141.6MB
Gearbox: Pulling Gear mountebank:latest - OK.
Gearbox: Installed Gear 'mountebank:latest' OK.
Gearbox: Starting gear 'mountebank:latest':
Gearbox: Gear 'mountebank:latest' started OK
[mountebank:2.4.0] ~ $ 
```

Create, and start version **2.4.0** of the **mountebank** [Gearbox](https://github.com/gearboxworks/) container and run a shell with commands.

**./bin/launch shell mountebank:2.4.0 ls -l**

```
me@home:~ % ./bin/launch shell mountebank:2.4.0 ls -l
Gearbox: Gear 'mountebank:2.4.0' already started.
total 60
-rw-r--r--    1 gearbox  gearbox       5864 May 24 02:25 Makefile
-rw-r--r--    1 gearbox  gearbox      18757 May 24 02:25 README.md
drwxr-xr-x    1 gearbox  gearbox        374 May 24 02:25 TEMPLATE
drwxr-xr-x    1 gearbox  gearbox       1224 May  9 05:48 bin
drwxr-xr-x    1 gearbox  gearbox        238 May 22 01:33 build
-rw-r--r--    1 gearbox  gearbox       2196 May 22 01:35 files
-rw-r--r--    1 gearbox  gearbox       5313 May 24 01:34 gearbox.json
-rw-r--r--    1 gearbox  gearbox        596 May 22 01:27 packages
drwxr-xr-x    1 gearbox  gearbox        136 May 22 01:40 versions
me@home:~ % 
```

**./bin/launch shell mountebank:2.4.0 ps -eaf**

```
me@home:~ % ./bin/launch shell mountebank:2.4.0 ps -eaf
Gearbox: Gear 'mountebank:2.4.0' already started.
PID   USER     TIME  COMMAND
    1 root      0:00 /bin/s6-svscan /etc/gearbox/services
   16 root      0:00 s6-supervise GearShift
   17 root      0:00 s6-supervise sshd
   18 root      0:00 s6-supervise mountebank
   19 root      0:00 {GearboxGearshif} /bin/bash /usr/local/sbin/GearboxGearshift
   20 root      0:00 /usr/sbin/sshd -D -e
 3342 root      0:00 sshd: gearbox [priv]
 3344 gearbox   0:00 sshd: gearbox@notty
 3345 gearbox   0:00 ps -eaf
me@home:~ % 
```

Provide information on the installed [Gearbox](https://github.com/gearboxworks/) container.

**./bin/launch list mountebank**

```
me@home:~ % ./bin/launch list mountebank
Downloaded Gearbox images: 1 found
+----------+----------------------------------+-------+--------+
| CLASS    | IMAGE                            | PORTS | SIZE   |
+----------+----------------------------------+-------+--------+
| graphics | gearboxworks/mountebank:2.4.0  |       |  40 MB |
+----------+----------------------------------+-------+--------+

Installed Gearbox gears: 1 found
+---------------------+----------+---------+----------------------------------+-------+----------+---------------+--------+--------+
| NAME                | CLASS    | STATE   | IMAGE                            | PORTS | SSH PORT | IP ADDRESS    | MOUNTS | SIZE   |
+---------------------+----------+---------+----------------------------------+-------+----------+---------------+--------+--------+
| mountebank-2.4.0  | graphics | created | gearboxworks/mountebank:2.4.0  |       |          | (gearboxnet)  |        |  40 MB |
|                     |          |         |                                  |       |          |               |        |        |
+---------------------+----------+---------+----------------------------------+-------+----------+---------------+--------+--------+


Configured Gearbox networks:
+------------+--------+---------------+
| NAME       | DRIVER | SUBNET        |
+------------+--------+---------------+
| gearboxnet | bridge | 172.42.0.0/24 |
+------------+--------+---------------+
```


* * *
### [Gearbox](https://github.com/gearboxworks/) container command integration
When a [Gearbox](https://github.com/gearboxworks/) container is installed - specified commands, (as defined by the [gearbox.json](https://github.com/gearboxworks/docker-mountebank/blob/master/gearbox.json) file), will be symlinked to the `./bin/launch` executable.

This allows for seamless integration of a [Gearbox](https://github.com/gearboxworks/) container's commands with the host machine.

[Gearbox](https://github.com/gearboxworks/) containers may have many executables. Additionally if mountebank is also symlinked to `./bin/launch`, it will run the default command defined with the the container. No need to specify that command as in the shell example above.

`./mountebank`

`./mountebank -flag1 -flag2 variable1 variable2 variable3`

`./bin/launch run mountebank:2.4.0 -flag1 -flag2 variable1 variable2 variable3`

`./default -flag1 -flag2`





### Available commands

The **mountebank** [Gearbox](https://github.com/gearboxworks/) container has no defined commands within the [gearbox.json](https://github.com/gearboxworks/docker-mountebank/blob/master/gearbox.json) file.
The **mountebank** [Gearbox](https://github.com/gearboxworks/) container has the following **2** available commands:
| Host Executable Name | [Gearbox](https://github.com/gearboxworks/) Container Executable Name |
| -------------------- | ---------------------------------------- |
|(default command) | /usr/local/bin/mb |
|mb | /usr/local/bin/mb |


### Remote connection
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.
To show what ports are exported to the host, use the following command.

`./bin/launch list mountebank`


## Method 2: Docker Hub
It is strongly suggested to use [Gearbox](https://github.com/gearboxworks/) `launch` as everything is done for you. However, you can still work with a [Gearbox](https://github.com/gearboxworks/) Gears as though it's a normal Docker container.


### Setup from Docker Hub
A simple `docker pull gearbox/mountebank` will pull down the latest version.


### Starting
start - Spin up a Docker container with the correct runtime configs.

`docker run -d --name mountebank-latest --restart unless-stopped --network gearboxnet gearbox/mountebank:latest`


### Stopping
stop - Stop a Docker container.

`docker stop mountebank-latest`


### Remove container
rm - Remove the Docker container.

`docker container rm mountebank-latest`


### Run in foreground
run - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`docker run --rm --name mountebank-latest --network gearboxnet gearbox/mountebank:latest`


### Run a shell
shell - Run a shell, (/bin/bash), within a Docker container.

`docker run --rm --name mountebank-latest -i -t --network gearboxnet gearbox/mountebank:latest /bin/bash`


### SSH
ssh - All [Gearbox](https://github.com/gearboxworks/) containers have a running SSH daemon. So you can connect remotely.

Either use `launch` above or discover the port and SSH directly.

```
SSH_PORT="$(docker port mountebank-latest 22/tcp | sed 's/0.0.0.0://')"
ssh -p ${SSH_PORT} -o StrictHostKeyChecking=no gearbox@localhost
```


* * *
## Building from this GitHub repo.


### Setup from GitHub repo
Simply clone this repository to your local machine

`git clone https://github.com/gearboxworks/docker-mountebank.git`


### Makefile targets
`make build` - Build Docker images. Build all versions from the base directory or specific versions from each directory.

`make list` - List already built Docker images. List all versions from the base directory or specific versions from each directory.

`make clean` - Remove already built Docker images. Remove all versions from the base directory or specific versions from each directory.

`make push` - Push already built Docker images to Docker Hub, (only for [Gearbox](https://github.com/gearboxworks/) admins). Push all versions from the base directory or specific versions from each directory.


### Runtime from GitHub repo
You can either build your container as above, or use it from DockerHub with these commands:

`make start` - Spin up a Docker container with the correct runtime configs.

`make stop` - Stop a Docker container.

`make run` - Run a Docker container in the foreground, (all STDOUT and STDERR will go to console). The Container be removed on termination.

`make shell` - Run a shell, (/bin/bash), within a Docker container.

`make rm` - Remove the Docker container.

`make test` - Will issue a `stop`, `rm`, `clean`, `build`, `create` and `start` on a Docker container.


* * *
**Note: This README was generated by `launch - v1.7.4` - Created on 2021-03-18T12:31:55+1100, using template:README.md.tmpl and json:gearbox.json**
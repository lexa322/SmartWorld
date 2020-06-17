# Test task
### Steps:
-  Install [docker](https://docs.docker.com/engine/install/ubuntu/) and [docker-compose](https://docs.docker.com/compose/install/) on        ubuntu
- Add add user to group
```sh
$ sudo usermod -aG docker $USER
$ bash
```
- Clone git repository
```sh
$ cd ~
$ git clone https://github.com/lexa322/SmartWorld.git/
$ cd ./SmartWorld
```
- Copy folders **www** and **cfg** to home directory
```sh
$ cp -r ./cfg ~/
$ cp -r ./www ~/
```
-  Container start (**Use a script.sh to work with containers**)
```sh
$ ./script.sh
```



# Local Desktop Install


```shell
sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo apt install git
sudo apt install ansible
```

```shell
sudo ansible-pull -U https://github.com/mousedownmike/ansible-desktop.git
```

## Aliased Command

After a successful install the following alias will run the appropriate command:

```shell
ansible-up
```
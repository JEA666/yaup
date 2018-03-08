# Oppsett av Ubuntu

### Instruksjoner

  - wget -O master.zip http://git.spk.no/rest/api/latest/projects/PU_AFL/repos/ubuntu-oppsett/archive?format=zip
  - unzip master.zip
  - cd vars
  - cp pub_global.yml pri_global.yml
  - edit pri_global -> vi pri_global.yml
  - cd Ubuntu-oppsett
  - sudo ./install

### Oppsett av virtualbox

### Utgår -- Slå heller av secureboot.
- referanse: https://stegard.net/2016/10/virtualbox-secure-boot-ubuntu-fail/

```
# cd ~/.ssh
# openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv outform DER -out MOK.der -nodes -days 36500 -subj "/CN=YOUR_NAME/"
# chmod 600 MOK.priv
```

```
# mokutil --import ~/.ssh/MOK.der
input password: f.eks 1234
input password again:
```
Reboot - Tast inn passord - velg Enroll MOK

```
#!/bin/bash

for modfile in $(dirname $(modinfo -n vboxdrv))/*.ko; do
  echo "Signing $modfile"
  /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 \
                                ~/.ssh/MOK.priv \
                                ~/.ssh/MOK.der "$modfile"
done
```
Kjør fil med sudo. sudo ./sign_vbox.sh

```
# modprobe vboxdrv
```
### Utgår -- Slå av secureboot

```
Ubuntu-oppsett
|
├── roles
│   ├── atom
│   │   ├── defaults
│   │   ├── handlers
│   │   ├── meta
│   │   ├── tasks
│   │   ├── tests
│   │   └── vars
│   ├── common
│   ├── docker
│   ├── gen_ssh_key
│   ├── oh-my-zsh
│   ├── setup_git
│   ├── slack
│   └── spk_config
├── scripts
└── vars

```

# Ubuntu Provisioning repo

### Instruction
  - wget https://github.com/JEA666/jaup/archive/master.zip
  - unzip master.zip
  - cd jaup-master/vars
  - cp pub_global.yml pri_global.yml
  - edit pri_global -> vi pri_global.yml
  - cd ..
  - sudo ./install

```
jaup
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

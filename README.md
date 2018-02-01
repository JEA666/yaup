# Ubuntu Provisioning repo

### Instruction
  - wget https://github.com/JEA666/jaup/archive/master.zip
  - unzip master.zip
  - cd vars
  - cp pub_global.yml pri_global.yml
  - edit pri_global -> vi pri_global.yml
  - cd jaup-master
  - sudo ./install

```

└── jaup
    ├── roles
    │   ├── atom
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── tests
    │   │   └── vars
    │   ├── common
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── tests
    │   │   └── vars
    │   ├── gen_ssh_key
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── tests
    │   │   └── vars
    │   ├── oh-my-zsh
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── templates
    │   │   ├── tests
    │   │   └── vars
    │   ├── setup_git
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── tests
    │   │   └── vars
    │   ├── slack
    │   │   ├── defaults
    │   │   ├── handlers
    │   │   ├── meta
    │   │   ├── tasks
    │   │   ├── tests
    │   │   └── vars
    │   └── spk_dir
    │       ├── defaults
    │       ├── files
    │       ├── handlers
    │       ├── meta
    │       ├── tasks
    │       ├── templates
    │       ├── tests
    │       └── vars
    ├── scripts
    └── vars

```

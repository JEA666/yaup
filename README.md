# Oppsett av Ubuntu

### Instruksjoner

  - wget http://jea@git.spk.no/scm/pu_afl/ubuntu-oppsett.git
  - unzip master.zip
  - cd vars
  - cp pub_global.yml pri_global.yml
  - edit pri_global -> vi pri_global.yml
  - cd Ubuntu-oppsett
  - sudo ./install

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
│   │   ├── defaults
│   │   ├── handlers
│   │   ├── meta
│   │   ├── tasks
│   │   ├── tests
│   │   └── vars
│   ├── docker
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
│   └── spk_config
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

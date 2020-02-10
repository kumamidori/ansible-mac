# macOS provisioner

## Usage

### Prepare

```bash
$ brew update
$ brew install python ansible
```

### Execute

```bash
# e.g. execute all with sudo
$ ansible-playbook localhost.yml -i hosts -K

# e.g. only install brew packages
$ ansible-playbook localhost.yml -i hosts --tags=brew

# e.g. execute all except installing brew and brew-cask packages
$ ansible-playbook localhost.yml -i hosts --skip-tags=brew,cask
```

-----

- PHP は anyenv で手動インストール
- プロジェクト用の Oracle Java JDK8 はライセンス同意等が必要なので手動インストール

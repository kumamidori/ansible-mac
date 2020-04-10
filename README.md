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

## 手動インストール

- anyenv, jenv, phpenv, rbenv, nodenv
- プロジェクト用の Oracle Java JDK8 （ライセンス同意等が必要なので）
- sdkman, gradle
- Office （旧PCのライセンスを削除しておくこと）
- ssh の config
- gem

```
$ gem install docker-sync
```

## Links

### 設定
- [CharlesでLocalProxy通したときHTTPSのページが信頼されない問題 \- Qiita](https://qiita.com/yd_niku/items/569df587bc17f29fd7ee)

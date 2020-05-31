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

## 手動インストール（自分用メモ）

- anyenv, jenv, phpenv, rbenv, nodenv, pyenv
- homebrew の php は deployer と composer_packages で利用
- プロジェクト用の Oracle Java JDK8 （ライセンス同意等が必要なので）
- Charles と Alfred は有償版ライセンス有り
- Office （旧PCのライセンスを削除しておくこと）
- digdag
- sdkman, gradle
- symfony CLI は anyenv の PHP を認識してくれない（未調査） ref. [Issue #119 symfony/cli](https://github.com/symfony/cli/issues/119)
- ssh の config
- gem

```
$ gem install docker-sync
```



### 設定

- [CharlesでLocalProxy通したときHTTPSのページが信頼されない問題 \- Qiita](https://qiita.com/yd_niku/items/569df587bc17f29fd7ee)

## ソースコードについて

[ttskch/ansible\-mac:](https://github.com/ttskch/ansible-mac)

を参考にして自分用に設定したもの。

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

## Manual Install（自分用メモ）

- anyenv, jenv, phpenv, rbenv, nodenv, pyenv
- homebrew の php は deployer と composer_packages インストールで利用
- install Composer "each phpenv version"（ngyuki/phpenv-composer clone into "~/.anyenv/envs/phpenv/plugins/", rehash, composer i "hirak/prestissimo ）
- symfony CLI
- プロジェクト用の Oracle Java JDK8 （ライセンス同意等が必要なので）
- Charles と Alfred は有償版ライセンス有り
- Office （旧PCのライセンスを削除しておくこと）
- digdag
- sdkman, gradle
- can't symfony CLI use anyenv PHP ref. [Issue #119 symfony/cli](https://github.com/symfony/cli/issues/119)
- ssh config
- gem

```
$ gem install docker-sync
```

### 設定

- Charles (ref.[CharlesでLocalProxy通したときHTTPSのページが信頼されない問題 \- Qiita](https://qiita.com/yd_niku/items/569df587bc17f29fd7ee))

## ソースコードについて

[ttskch/ansible\-mac:](https://github.com/ttskch/ansible-mac)

を参考にして自分用に設定したもの。

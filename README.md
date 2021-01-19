# macOS provisioner

## Usage

### Prepare

- Install XCode

https://apps.apple.com/us/app/xcode/id497799835?mt=12

- Install Homebrew
- Install python and ansible

```bash
$ brew update
$ brew install python ansible
$ ansible-galaxy collection install community.general
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

## 自分用メモ
### Backup Manually (Mac TimeMachine)

- dotfiles/.gitignore ref. https://github.com/kumamidori/dotfiles
- .aws
- .ssh（config, key）
- *.pem (ssh private keys)
- 1password data
- Office License
- /etc/hosts
- zsh history
- SequelPro query history

### Install Manually

#### anyenv

- anyenv(plugin: anyenv-update, anyenv-git), jenv, phpenv, rbenv, nodenv, pyenv 
- anyenv はPHPビルドオプションを別リポジトリの別ブランチで管理しているので homebrew ではなく git で入れる

#### jenv

- `/usr/libexec/java_home -V`
- `jenv add "/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home"`
- Java 1.8 for project (Selenium, embulk)
```
$ open /usr/local/Caskroom/adoptopenjdk8
Run manually: OpenJDK8U-jdk_x64_mac_hotspot_8u262b10.pkg
＜手動実行しないとインストールされない（ライセンス同意があるため）
$ /usr/libexec/java_home -V
```
- `jenv add "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"`

#### playbook guard conditions

- [anyenv] after Java1.8 install: install embulk by ansible（embulk, embulk-input-s3, embulk-filter-to_json, embulk-output-bigquery）
- [anyenv] after nodenv: -g gulp, karma, less, npm-check-updates, typescript, typings, yarn
- [anyenv] after rbenv: docker-sync

#### etc.
- homebrew の php は deployer と composer_packages インストールで利用
- install Composer "each phpenv version"（ngyuki/phpenv-composer clone into "~/.anyenv/envs/phpenv/plugins/", rehash ）
- symfony CLI
- Charles と Alfred は有償版ライセンス有り
- Office （旧PCのライセンスを削除しておくこと）
- digdag
- sdkman, gradle
- can't symfony CLI use anyenv PHP ref. [Issue #119 symfony/cli](https://github.com/symfony/cli/issues/119)
- ssh config

### 設定

- Charles (ref.[CharlesでLocalProxy通したときHTTPSのページが信頼されない問題 \- Qiita](https://qiita.com/yd_niku/items/569df587bc17f29fd7ee))

## ソースコードについて

[ttskch/ansible\-mac:](https://github.com/ttskch/ansible-mac)

を参考にして自分用に設定したもの。

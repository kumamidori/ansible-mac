#!/bin/bash
#
# https://github.com/ryuichi1208/dotfiles
# より一部をコピーして改変した。LICENSE 参照。
#
if [ $(uname) != "Darwin" ] ; then
	echo "Not macOS!"
	exit 1
fi

#----------------------------------------------------------
# Base
#----------------------------------------------------------
# コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
# フリーズすると自動的に再起動
sudo systemsetup -setrestartfreeze on
# 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
# クラッシュレポートの無効化
defaults write com.apple.CrashReporter DialogType -string "none"
# 時計アイコンクリック時にOSやホスト名ipを表示する
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

#----------------------------------------------------------
# Dock
#----------------------------------------------------------
# Dockで開いているアプリケーションのインジケータライトを表示する
defaults write com.apple.dock show-process-indicators -bool true
# アプリケーション起動時のアニメーションを無効化
defaults write com.apple.dock launchanim -bool false
# Dashboard無効化
defaults write com.apple.dashboard mcx-disabled -bool true

###### Finder ######
# アニメーションを無効化する
defaults write com.apple.finder DisableAllAnimations -bool true
# デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true
# ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true
# パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# 拡張子変更時の警告を無効化
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# ディレクトリのスプリングロードを有効化
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
# スプリングロード遅延を除去
defaults write NSGlobalDomain com.apple.springing.delay -float 0
# 拡張子を常に表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# 保存ダイアログを詳細設定で表示
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -boolean true

# USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
# ディスク検証を無効化
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
# ボリュームマウント時に自動的にFinderを表示
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# ゴミ箱を空にする前の警告の無効化
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# Show the ~/Library folder
chflags nohidden ~/Library
# Show the /Volumes folder
sudo chflags nohidden /Volumes

#----------------------------------------------------------
# Menubar
#----------------------------------------------------------
# バッテリー残量を％表記に（＜ターミナルで実行しても反映できなかった）
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# 日付と時刻
# メニューバーに日付、曜日、24時間）（＜ターミナルで実行しても反映できなかった）
defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM HH:mm'

#----------------------------------------------------------
# Safari
#----------------------------------------------------------
# 検索クエリをAppleへ送信しない
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
# アドレスバーに表示されるURLを全表示
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
# Safariのデバッグメニューを有効化
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
# Safariのブックマークバーから不要なアイコンを削除
defaults write com.apple.Safari ProxiesInBookmarksBar "()"
# 自動修正の無効化
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
# オートフィルの無効化
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false
# 自動的に拡張機能を更新する
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

#----------------------------------------------------------
# Terminal
#----------------------------------------------------------
# UTF-8のみを使用する
defaults write com.apple.terminal StringEncodings -array 4
# ターミナル終了時のプロンプトを非表示にする
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
# スクリーンショットの保存先をデスクトップにしない
defaults write com.apple.screencapture location ~/Dowonloads

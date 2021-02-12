defaults write -g NSAutomaticWindowAnimationsEnabled -bool false    # ファイルを開くときのアニメーションを無効にする
defaults write -g NSInitialToolTipDelay -integer 0    # ツールチップ表示までのタイムラグをなくす
defaults write -g NSWindowResizeTime 0.1    # ダイアログ表示やウィンドウリサイズ速度を高速化する

defaults write NSGlobalDomain AppleShowAllExtensions -bool true    # 全ての拡張子のファイルを表示する
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"    # スクロールバーを常時表示する
defaults write NSGlobalDomain InitialKeyRepeat -int 15    # キーリピート開始までのタイミング
defaults write NSGlobalDomain KeyRepeat -int 2    # キーリピートの速度
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001    # コンソールアプリケーションの画面サイズ変更を高速にする
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -int 1 # アプリケーションを終了するときにウィンドウを閉じる(1=閉じない)
#defaults write NSGlobalDomain WebKitDeveloperExtras -bool true    # Safari のコンテキストメニューに Web インスペクタを追加する
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true    # F1,F2などのキーを標準のファンクションキーとして使用する
defaults write NSGlobalDomain com.apple.springing.delay -float 0    # スプリングロード遅延を除去する
defaults write NSGlobalDomain com.apple.springing.enabled -bool true    # ディレクトリのスプリングロードを有効にする


defaults write com.apple.CrashReporter DialogType -string "none"    # クラッシュレポートを無効化する
defaults write com.apple.LaunchServices LSQuarantine -bool false    # 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.NetworkBrowser ShowThisComputer -bool true    # ファイル共有を有効にした時、共有先に自分の Mac を表示させる

defaults write com.apple.menuextra.battery ShowPercent -string "YES"    # バッテリー表示を % 表記にする

defaults write com.apple.dashboard mcx-disabled -bool true    # Dashboard を無効化する
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true    # USB やネットワークストレージに .DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
defaults write com.apple.screencapture disable-shadow -bool true    # スクリーンキャプチャの影をなくす
defaults write com.apple.screencapture type -string "png"    # スクリーンショットの保存形式を PNG にする
defaults write com.apple.terminal StringEncodings -array 4    # UTF-8 のみを使用する
sudo nvram SystemAudioVolume=" "    # ブート時のサウンドを無効化する

# スクリーンショット
defaults write com.apple.screencapture name "screenshot"
#defaults write com.apple.screencapture include-date -bool false

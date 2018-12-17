cask 'shadowsocksx-ng-r8' do
  version '1.4.4-r8'
  sha256 '9353980f35f78a9d16951f28d036f5647a2f5a5c1a79f6480cc4b2852bc77e57'

  url "https://github.com/qinyuhang/ShadowsocksX-NG-R/releases/download/#{version}/ShadowsocksX-NG-R8.dmg"
  name 'ShadowsocksX-NG-R8'
  homepage 'https://github.com/qinyuhang/ShadowsocksX-NG-R'

  conflicts_with cask: 'shadowsocksx-ng'
  depends_on macos: '>= :el_capitan'

  app 'ShadowsocksX-NG-R8.app'

  uninstall delete: '/Library/Application Support/ShadowsocksX-NG',
            quit:   'com.qiuyuzhou.ShadowsocksX-NG'

  zap trash: [
               '~/.ShadowsocksX-NG',
               '~/Library/Application Support/ShadowsocksX-NG',
               '~/Library/Caches/com.qiuyuzhou.ShadowsocksX-NG',
               '~/Library/Preferences/com.qiuyuzhou.ShadowsocksX-NG.plist',
             ]
end

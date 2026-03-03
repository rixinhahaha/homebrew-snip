cask "snip" do
  version "1.0.13"

  on_arm do
    sha256 "aece4c10b5f23c13ae21686a8fd81bd6b5443baa092d35a323907b1dde4c0100"
    url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "6fd01f07df82ced869d81fb454e65d8f65a32bbc8df45101fd5a0427d36c732a"
    url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-x64.dmg"
  end

  name "Snip"
  desc "Screenshot app with annotation, AI-powered organization, and semantic search"
  homepage "https://github.com/rixinhahaha/snip"

  depends_on macos: ">= :ventura"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Snip.app"

  zap trash: [
    "~/Library/Application Support/snip",
    "~/Library/Caches/snip",
    "~/Library/Preferences/com.snip.app.plist",
    "~/Library/Saved Application State/com.snip.app.savedState",
  ]
end

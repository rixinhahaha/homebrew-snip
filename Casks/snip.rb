cask "snip" do
  version "1.2.2"
  sha256 "941cfb918dfbcc02fd59638d95d7d78fb17ead3739777c341656813a46c4435b"

  url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-arm64.dmg"
  name "Snip"
  desc "Screenshot app with annotation, AI-powered organization, and semantic search"
  homepage "https://github.com/rixinhahaha/snip"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

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

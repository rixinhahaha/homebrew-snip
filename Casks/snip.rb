cask "snip" do
  version "1.1.1"
  sha256 "8522bffa5fccae2b138cdf254026f1040608e83be5d056b993eccba6858568a3"

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

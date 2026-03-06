cask "snip" do
  version "1.0.19"
  sha256 "43dfb5b0961e79a2f47d5759ce943207626528353865c614010408df9533ec11"

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

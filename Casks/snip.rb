cask "snip" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "d7ed0cddf2ae31811fa121c3852afdebf8500d6c8396c8cb7827710f8cd50f26",
         intel: "e5271402965b0eb4dade71b685a1f5bf60d40d4b04155499b60bf80c05a5a161"

  url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-#{arch}.dmg"
  name "Snip"
  desc "Screenshot app with annotation, AI-powered organization, and semantic search"
  homepage "https://github.com/rixinhahaha/snip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Snip.app"

  zap trash: [
    "~/Library/Application Support/snip",
    "~/Library/Caches/snip",
    "~/Library/Preferences/com.snip.app.plist",
    "~/Library/Saved Application State/com.snip.app.savedState",
  ]
end

cask "snip" do
  arch arm: "arm64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "e06b80e7038ad4cdc75d3615104c1fd1bc28e03ad4f2120c15fe3a92bace5ad1",
         intel: "72ca3c597e451130b06e13f32e5a658b2d11c95b0266af058f805ec33ca35432"

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

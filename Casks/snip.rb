cask "snip" do
  arch arm: "arm64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "bc5f5509efc0a44f8cbd035c46c100ecba8cc2b7ed29b418486f2bbf06871cb6",
         intel: "68d13450a4708e5a669de210bae3d16c9af4bf2976e09d2c835dbf8219b1d6ad"

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

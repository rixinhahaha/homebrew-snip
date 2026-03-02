cask "snip" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "710e4ae4ab1e9ca6e3237dea267424b442429551161003a3ba2fee8d806df63d",
         intel: "e45f5d1212edc5d2fae9eccff992dcf1d7427e1574319e307cca76ee50a7ce02"

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

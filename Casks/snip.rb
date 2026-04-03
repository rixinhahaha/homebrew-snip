cask "snip" do
  version "1.3.8"
  sha256 "be19ed5d0b3f17190e690a7b2153631dfd3cc3e979eb97ed954bcf5bed3e0ed4"

  url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-arm64.dmg"
  name "Snip"
  desc "Visual mode for Claude Code — diagrams, previews, and screenshots"
  homepage "https://github.com/rixinhahaha/snip"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Snip.app"
  binary "#{appdir}/Snip.app/Contents/Resources/cli/snip", target: "snip"

  zap trash: [
    "~/Library/Application Support/snip",
    "~/Library/Caches/snip",
    "~/Library/Preferences/com.snip.app.plist",
    "~/Library/Saved Application State/com.snip.app.savedState",
    "~/.snip",
  ]
end

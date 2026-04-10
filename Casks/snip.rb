cask "snip" do
  version "1.3.12"
  sha256 "a3d8eb7107b16824d877f49e1db02ed984181f6f7caf1fc4d277b2544cd31b3f"

  url "https://github.com/rixinhahaha/snip/releases/download/v#{version}/Snip-#{version}-arm64.dmg"
  name "Snip"
  desc "Visual mode for Claude Code — diagrams, previews, and screenshots"
  homepage "https://github.com/rixinhahaha/snip"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64
  auto_updates true

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

cask "snip" do
  version "1.3.13"
  sha256 "a35577b637b347e9ac30c0d0ddd8ca4b2f8281c52ccd7f93424578d5b7e0d5c5"

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

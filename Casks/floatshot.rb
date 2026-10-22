cask "floatshot" do
  version "1.3.0"
  sha256 "046e40a1815e0033fcd09d1562b7a1fa4454311d66bcec24de3b80d376cbaf1d"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots and screen recording with annotation and OCR"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

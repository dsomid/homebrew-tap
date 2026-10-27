cask "floatshot" do
  version "1.8.1"
  sha256 "02335f8d00b2d4c8c7194ac802eadbb16ecef16c861ee1065f23dcd3dfb743ab"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots and screen recording with annotation and OCR"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

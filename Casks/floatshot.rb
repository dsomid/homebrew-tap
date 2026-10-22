cask "floatshot" do
  version "1.6.0"
  sha256 "e7c6c415dddd76a26125a70a631fbc7459c3774329d4af11b8961574a7006f2b"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots and screen recording with annotation and OCR"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

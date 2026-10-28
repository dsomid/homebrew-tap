cask "floatshot" do
  version "1.9.0"
  sha256 "457ec231fd4d99d8cf35e7528bd2c3b8820760e26e5ac1e10aff6144d95bdca7"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots and screen recording with annotation and OCR"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

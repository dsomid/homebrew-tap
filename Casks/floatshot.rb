cask "floatshot" do
  version "1.10.1"
  sha256 "119cad370be5e6e300744b8170b101eab9e36dfe12a2b94fa9e2fcf6c6a2ac18"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots and screen recording with annotation and OCR"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

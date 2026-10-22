cask "floatshot" do
  version "1.1.0"
  sha256 "4bbe72d459b3c5a5c9bd8a37fb543dbbb4e01e8f414d28e65e279582a9a9ac8a"

  url "https://github.com/dsomid/FloatShot/releases/download/v#{version}/FloatShot-#{version}.dmg"
  name "FloatShot"
  desc "Floating screenshots: capture a region, pin it on top, annotate, OCR, AirDrop"
  homepage "https://github.com/dsomid/FloatShot"

  depends_on macos: :sonoma

  app "FloatShot.app"

  uninstall quit: "com.omid.floatshot"

  zap trash: "~/Library/Preferences/com.omid.floatshot.plist"
end

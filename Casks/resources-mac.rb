cask "resources-mac" do
  version "0.3.0"
  sha256 "b17a5f89b10b1265676cd0f885e3019aa5831b58559dc8156a98e2a673bd0cf9"

  url "https://github.com/VachaganGrigoryan/resources-mac/releases/download/v#{version}/resources-mac-#{version}.dmg"
  name "Resources"
  desc "System monitor inspired by GNOME Resources"
  homepage "https://github.com/VachaganGrigoryan/resources-mac"

  depends_on macos: :ventura

  app "Resources.app"

  zap trash: "~/Library/Saved Application State/io.github.vachagangrigoryan.resources-mac.savedState"
end

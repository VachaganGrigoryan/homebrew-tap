cask "resources-mac" do
  version "0.1.0"
  sha256 "04a5b005d4b100be0568481446af0ff8f42c3fc23f9104d138805a523cf41299"

  url "https://github.com/VachaganGrigoryan/resources-mac/releases/download/v#{version}/resources-mac-#{version}.dmg"
  name "Resources"
  desc "System monitor inspired by GNOME Resources"
  homepage "https://github.com/VachaganGrigoryan/resources-mac"

  depends_on macos: :ventura

  app "Resources.app"

  zap trash: "~/Library/Saved Application State/io.github.vachagangrigoryan.resources-mac.savedState"
end

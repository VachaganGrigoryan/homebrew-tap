cask "resources-mac" do
  version "0.2.0"
  sha256 "03d2e75f96a4bdaffdc9ff3be74dc51cc6427194ab072ae67a6d0e84b237667e"

  url "https://github.com/VachaganGrigoryan/resources-mac/releases/download/v#{version}/resources-mac-#{version}.dmg"
  name "Resources"
  desc "System monitor inspired by GNOME Resources"
  homepage "https://github.com/VachaganGrigoryan/resources-mac"

  depends_on macos: :ventura

  app "Resources.app"

  zap trash: "~/Library/Saved Application State/io.github.vachagangrigoryan.resources-mac.savedState"
end

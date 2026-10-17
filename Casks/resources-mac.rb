cask "resources-mac" do
  version "0.4.0"
  sha256 "b4f9be2529a7e150b0c8e6e0e2e913808973390b0a0afe3c4694b3580ab1e15c"

  url "https://github.com/VachaganGrigoryan/resources-mac/releases/download/v#{version}/resources-mac-#{version}.dmg"
  name "Resources"
  desc "System monitor inspired by GNOME Resources"
  homepage "https://github.com/VachaganGrigoryan/resources-mac"

  depends_on macos: :ventura

  app "Resources.app"

  zap trash: "~/Library/Saved Application State/io.github.vachagangrigoryan.resources-mac.savedState"
end

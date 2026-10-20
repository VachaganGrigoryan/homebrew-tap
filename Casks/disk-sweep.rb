cask "disk-sweep" do
  version "0.5.0"
  sha256 "8d1a2294796823d627086a12456e041f5b9d8f4bd5d09079b411d915fca974af"

  url "https://github.com/VachaganGrigoryan/resources-mac/releases/download/v#{version}/disk-sweep-#{version}.dmg"
  name "Disk Sweep"
  desc "Finds caches, build output and Docker data to clean up"
  homepage "https://github.com/VachaganGrigoryan/resources-mac"

  depends_on macos: :ventura

  app "Disk Sweep.app"

  zap trash: "~/Library/Saved Application State/io.github.vachagangrigoryan.disk-sweep.savedState"
end

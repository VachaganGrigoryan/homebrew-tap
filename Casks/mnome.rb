cask "mnome" do
  version "1.0.0"
  sha256 "3f743ff9102de948d0d41eb1efb67cfa67a69b31f822cb8afc2ec3662b04c478"

  url "https://github.com/VachaganGrigoryan/Mnome/releases/download/v#{version}/Mnome-#{version}.zip"
  name "Mnome"
  desc "GNOME Shell-style desktop: top bar, overview, workspaces, tiling and gestures"
  homepage "https://github.com/VachaganGrigoryan/Mnome"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Mnome.app"

  # A running Mnome puts the Mac's settings back as it quits; after a crash, --rescue does.
  uninstall early_script: {
              executable:   "#{appdir}/Mnome.app/Contents/MacOS/Mnome",
              args:         ["--rescue"],
              must_succeed: false,
            },
            quit:         "dev.mnome.shell"

  zap trash: [
    "~/Library/Application Support/Mnome",
    "~/Library/Preferences/dev.mnome.shell.plist",
  ]

  caveats <<~EOS
    Mnome is not notarized: on first launch macOS blocks it. Open System Settings,
    then Privacy & Security, and click Open Anyway.

    It needs Accessibility and Screen Recording; after an upgrade macOS may ask again.

    Quitting Mnome puts your Mac back as it was. After a crash, run:
      #{appdir}/Mnome.app/Contents/MacOS/Mnome --rescue
  EOS
end

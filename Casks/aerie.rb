cask "aerie" do
  version "1.0.2"
  sha256 "5dd6dc635bbb8ae4899177b75e89e8f37f6c3cb615dfb18aa4e3734089c7bf25"

  url "https://aerie.work/releases/Aerie-#{version}.dmg"
  name "Aerie"
  desc "Notch-based daily planner, focus timer, notes, and calendar companion"
  homepage "https://aerie.work/"

  livecheck do
    url "https://aerie.work/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Aerie.app"

  zap trash: [
    "~/Library/Application Support/Aerie",
    "~/Library/Caches/app.aerie.mac",
    "~/Library/HTTPStorages/app.aerie.mac",
    "~/Library/Preferences/app.aerie.mac.plist",
    "~/Library/Saved Application State/app.aerie.mac.savedState",
  ]
end

cask "aerie" do
  version "1.0.5"
  sha256 "1113f7de997f94294d7997899a2c50f0ee7659499e49ddb2b1a7e692f9a30c3b"

  url "https://aerie.work/releases/Aerie-#{version}.dmg"
  name "Aerie"
  desc "Notch-based daily planner, focus timer, notes, and calendar companion"
  homepage "https://aerie.work/"

  livecheck do
    url "https://aerie.work/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Aerie.app"

  zap trash: [
    "~/Library/Application Support/Aerie",
    "~/Library/Caches/app.aerie.mac",
    "~/Library/HTTPStorages/app.aerie.mac",
    "~/Library/Preferences/app.aerie.mac.plist",
    "~/Library/Saved Application State/app.aerie.mac.savedState",
  ]
end

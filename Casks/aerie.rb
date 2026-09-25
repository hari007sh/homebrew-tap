cask "aerie" do
  version "1.0.6"
  sha256 "832b065e736f8511d707cedd1d33d99cf591b19ab364bc41e33909ec079d3fe1"

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

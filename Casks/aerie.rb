cask "aerie" do
  version "1.1.0"
  sha256 "59213f8e820f065f1e640cd7d2304394752c513ec76e9f7e517f16144854a8a2"

  url "https://aerie.work/releases/Aerie-#{version}.dmg"
  name "Aerie"
  desc "Notch-based daily planner, focus timer, notes, and calendar companion"
  homepage "https://aerie.work/"

  livecheck do
    url "https://aerie.work/appcast.xml"
    strategy :sparkle, &:short_version
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

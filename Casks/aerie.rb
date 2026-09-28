cask "aerie" do
  version "1.1.2"
  sha256 "22dc68bd33e0730cf4ba0db8f155ec93142059d825b67dffb3b487c125c113df"

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

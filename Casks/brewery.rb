cask "brewery" do
  version "1.0.0"
  sha256 "e4ceea634dc29570de683f17056911dcbb0e3109d5833376e7ae8dc282e70c16"

  url "https://github.com/Devguru-J/brewery/releases/download/v#{version}/brewery-#{version}.zip"
  name "brewery"
  desc "One-click brew update, upgrade and upgrade --greedy with a native macOS GUI"
  homepage "https://bymemory.dev"

  depends_on macos: :sonoma

  app "brewery.app"

  zap trash: [
    "~/Library/Preferences/com.tuesdaymorning.brewery.plist",
    "~/Library/Saved Application State/com.tuesdaymorning.brewery.savedState",
  ]
end

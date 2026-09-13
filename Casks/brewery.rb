cask "brewery" do
  version "1.0.1"
  sha256 "b15d1979f3666f626104e0fb9648b7d6c76b7f7cc5c6504903988d4558a5029a"

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

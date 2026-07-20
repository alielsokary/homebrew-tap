cask "caskhub" do
  version "0.6.3"
  sha256 "62132def117ccf14261cc18228a25d4075f29b423f49c28bdbb3853c30f6b916"

  url "https://github.com/alielsokary/CaskHub/releases/download/#{version}/CaskHub-#{version}.zip"
  name "CaskHub"
  desc "Native GUI for Homebrew casks"
  homepage "https://github.com/alielsokary/CaskHub"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "CaskHub.app"

  zap trash: [
    "~/Library/Application Support/CaskHub",
    "~/Library/Application Support/com.mag.caskhub",
    "~/Library/Caches/CaskHub",
    "~/Library/Caches/com.mag.caskhub",
    "~/Library/HTTPStorages/com.mag.caskhub",
    "~/Library/Preferences/com.mag.caskhub.plist",
  ]
end

cask "caskhub" do
  version "0.6.1"
  sha256 "b509b6a6d3958171aac45edf2feba55826220189bc9e8b69e8e111c3175f41ce"

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

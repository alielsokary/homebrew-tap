cask "caskhub" do
  version "0.6.5"
  sha256 "f855f3a17b4062b614c8409af341f2c4393b4ae0a55dad7de452407dba5ecd56"

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

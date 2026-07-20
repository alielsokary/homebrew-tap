cask "caskhub" do
  version "0.6.4"
  sha256 "c4afbd34be6b0e20aa12a37f95f5e0faa5ff7ee5e201772a1c7b5644b14f1b98"

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

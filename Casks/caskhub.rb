cask "caskhub" do
  version "0.5.0"
  sha256 "0f096396fe79019bc01e8b59d893690e59b369a2dfd67abd886d9940cde4d3ed"

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

cask "lession" do
  version "1.2.1"

  on_arm do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-arm64.dmg"
    sha256 "66d80894e37196d5e8c84640726ff7cdb16c7ba220dfac3cad659965ce29bb34"
  end

  on_intel do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-x64.dmg"
    sha256 "d220f610b11345ee9c8c2f315ac84791fe74b7ef6809464144a5bb967490b46a"
  end

  name "Lession"
  desc "Lession application by eslsoft"
  homepage "https://github.com/eslsoft/lession"

  app "Lession.app"

  zap trash: [
    "~/Library/Application Support/Lession",
    "~/Library/Preferences/com.eslsoft.lession.plist",
    "~/Library/Caches/com.eslsoft.lession",
  ]
end

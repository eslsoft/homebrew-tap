cask "lession" do
  version "1.2.0"

  on_arm do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-arm64.dmg"
    sha256 "f57bdfe9855618c2554b720d16c31487332dd650b1ce25ac758399362d537e12"
  end

  on_intel do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-x64.dmg"
    sha256 "07019df762ffc612847d41bbb2d6fe81124ff7deec3b235721095ee720d1ae22"
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

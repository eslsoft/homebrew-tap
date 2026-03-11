cask "lession" do
  version "1.0.5"

  on_arm do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-arm64.dmg"
    sha256 "51e37c4afba6aaf50d11dd3185b2671ca0a8ee1763ca777f6181081c29d675bf"
  end

  on_intel do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-x64.dmg"
    sha256 "87f33277a0e950dcb48bc9bb3431f6b7f4b654212368be6a1ecbff46e6c14f7f"
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

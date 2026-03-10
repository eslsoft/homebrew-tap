cask "lession" do
  version "1.0.3"

  on_arm do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-arm64.dmg"
    sha256 "934ce46a7c2a7461b3d3a45295387b28fa044be50fd50a6dc39b635240df79bb"
  end

  on_intel do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-x64.dmg"
    sha256 "e9a11d3587f290dbbeac2179d118e4b47ac3c6b47e728b80d26e16f00e37622b"
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

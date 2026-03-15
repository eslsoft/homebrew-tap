cask "lession" do
  version "1.2.2"

  on_arm do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-arm64.dmg"
    sha256 "bae17f0266987ad3d53d81119bddc954f063d7c95eeebf9e2bd35ec2c8bf8409"
  end

  on_intel do
    url "https://github.com/eslsoft/lession/releases/download/v#{version}/Lession-#{version}-x64.dmg"
    sha256 "94a66de92e346c5aa44f98178201fbab8eb66c0afd5efc1b77ac816e47122c3f"
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

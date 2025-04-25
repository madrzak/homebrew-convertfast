cask "convertfast" do
  version "1.0.1"
  sha256 "06ddec7273426fc3c1e962a9d06b6f6f4263b5f9929d3e0bbb1b327849e4abb6"

  url "https://github.com/madrzak/ConvertFast/releases/download/v#{version}/ConvertFast-#{version}.zip"
  name "ConvertFast"
  desc "Menu bar app for automatic media conversion using FFmpeg and cwebp"
  homepage "https://github.com/madrzak/ConvertFast"

  depends_on formula: "ffmpeg"
  depends_on formula: "webp"
  depends_on macos: ">= :monterey"

  app "ConvertFast.app"

  zap trash: [
    "~/Library/Application Support/ConvertFast",
    "~/Library/Preferences/com.madrzak.ConvertFast.plist",
  ]
end

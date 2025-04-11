cask "convertfast" do
  version "1.0.0"
  sha256 "7220fef2b8dc2c182e013030f7ea12dc01983045e4a3118d4481d28f1e0bf0b8"

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

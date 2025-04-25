cask "convertfast" do
  version "1.0.2"
  sha256 "ff1f00b583a39b29dca18d3326bf011d6070157439ae820c4b46f364d090fcc5"

  url "https://github.com/madrzak/ConvertFast/releases/download/v#{version}/ConvertFast-#{version}.zip"
  name "ConvertFast"
  desc "Menu bar app for automatic media conversion using FFmpeg and cwebp"
  homepage "https://github.com/madrzak/ConvertFast"

  depends_on formula: "ffmpeg"
  depends_on formula: "webp"
  depends_on formula: "imagemagick"

  depends_on macos: ">= :monterey"

  app "ConvertFast.app"

  zap trash: [
    "~/Library/Application Support/ConvertFast",
    "~/Library/Preferences/com.madrzak.ConvertFast.plist",
  ]
end

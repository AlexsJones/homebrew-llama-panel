cask "llama-panel" do
  version "0.6.0"

  url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-universal.tar.gz"
  sha256 "fc69698e6cccbce74cdc56a4e45d42cb6792ebca6d7c81fdc8e718494742f112"

  name "llama-panel"
  desc "Native macOS desktop app for managing llama-server instances"
  homepage "https://github.com/AlexsJones/llama-panel"

  app "llama-panel.app"
  binary "#{appdir}/llama-panel.app/Contents/MacOS/llama-panel", target: "llama-panel"

  zap trash: [
    "~/Library/Caches/com.llamapanel.desktop",
    "~/Library/Preferences/com.llamapanel.desktop.plist",
    "~/Library/Saved Application State/com.llamapanel.desktop.savedState",
  ]
end

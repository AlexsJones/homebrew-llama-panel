cask "llama-panel" do
  version "0.1.0"

  url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-universal.tar.gz"
  sha256 "PLACEHOLDER"

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

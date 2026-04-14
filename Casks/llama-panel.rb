cask "llama-panel" do
  version "0.9.0"

  url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-universal.tar.gz"
  sha256 "57d675e3f8ad9661a9909cf4de490a9bea77a8b8b16bbacf7d6b700813689c40"

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

cask "llama-panel" do
  version "0.4.0"

  url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-universal.tar.gz"
  sha256 "d6631dc8829536f4c37953e349b3452cb099eacf49062ad615e0baf71c927bd4"

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

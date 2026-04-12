cask "llama-panel" do
  version "0.1.0"

  on_arm do
    url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-aarch64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  on_intel do
    url "https://github.com/AlexsJones/llama-panel/releases/download/v#{version}/llama-panel-v#{version}-macos-x86_64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  name "llama-panel"
  desc "Native macOS desktop app for managing llama-server instances"
  homepage "https://github.com/AlexsJones/llama-panel"

  app "llama-panel.app"
  binary "#{appdir}/llama-panel.app/Contents/MacOS/llama-panel", target: "llama-panel"

  zap trash: [
    "~/Library/Caches/com.llamapanel.app",
    "~/Library/Preferences/com.llamapanel.app.plist",
    "~/Library/Saved Application State/com.llamapanel.app.savedState",
  ]
end

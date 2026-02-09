# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.15"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.15/cie_v0.7.15_darwin_arm64.tar.gz"
      sha256 "31563c1faa9db0ff643f925d1a3e46b38b0a6e04bdf731a4341be4ecb29b5ef0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.15/cie_v0.7.15_linux_amd64.tar.gz"
      sha256 "3af60801ddeaced077ac38d0641c58b38b0ea732c9e74eca3e9ca1d61b5ea1a9"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.15/cie_v0.7.15_linux_arm64.tar.gz"
      sha256 "c4347d1ad4e45f9c69d040837eaf3843f18f0e94008d6d5c45f7532d0159c036"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

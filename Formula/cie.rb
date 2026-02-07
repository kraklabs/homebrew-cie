# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.3/cie_v0.7.3_darwin_arm64.tar.gz"
      sha256 "8657dd06a094686e20dd59d40cc41dff55185655b4baae5469a793058f085f9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.3/cie_v0.7.3_linux_amd64.tar.gz"
      sha256 "d8ec1b2a8c30545fccc17484b64eef8447fdad7fb31121e1ad0e04a300337217"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.3/cie_v0.7.3_linux_arm64.tar.gz"
      sha256 "e2bd9c8105b967d717fa70cdf12dc46c26330fff199a1f14940ac9e801da6550"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.6.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.1/cie_v0.6.1_darwin_arm64.tar.gz"
      sha256 "6fde108fae71dbc2e6bf34490332a2dba3ecde1bcf4c7ca33dac9c317ddac903"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.1/cie_v0.6.1_linux_amd64.tar.gz"
      sha256 "7c90f99086adcecea00658a67455bb50f872acc62791f6100481531ed9e2cb0f"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.6.1/cie_v0.6.1_linux_arm64.tar.gz"
      sha256 "6d1fcc035a44a455d2d10d1bb52db07fd189a6b50f5080b6bfc6e4dcbdac16a7"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

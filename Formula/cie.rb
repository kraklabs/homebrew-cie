# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_darwin_arm64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_linux_amd64.tar.gz"
      sha256 ""
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.0/cie_v0.3.0_linux_arm64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

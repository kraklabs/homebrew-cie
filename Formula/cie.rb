# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.1/cie_v0.3.1_darwin_arm64.tar.gz"
      sha256 "ad89a0c47fac0b9876c2046d06ef6296f92ab189f653e27b2934ff496ce049fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.1/cie_v0.3.1_linux_amd64.tar.gz"
      sha256 "c2c13c54acd8a4db66337baafe2f25ec858e6493fbf44f7d4ea22a8bf38b8b4f"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.3.1/cie_v0.3.1_linux_arm64.tar.gz"
      sha256 "9df3ad486daa18e63aa1e6c19f38dd9888dbd812ef2973678a4e6a626eaa22a3"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

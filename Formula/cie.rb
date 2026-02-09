# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.16"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.16/cie_v0.7.16_darwin_arm64.tar.gz"
      sha256 "019e4c870914020775cd7ac0796a7b9382d1ec8132bf7caef8f68c05019cec6c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.16/cie_v0.7.16_linux_amd64.tar.gz"
      sha256 "298c7425f36a14ad14f383b2ab753322efa1eeeb2af75f17234d67e2f14d939b"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.16/cie_v0.7.16_linux_arm64.tar.gz"
      sha256 "a0555921b733e6c58d981c367a4c91bd9d762713727343d4058d89e1f92f4a03"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

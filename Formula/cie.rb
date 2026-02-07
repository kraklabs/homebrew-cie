# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.8"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.8/cie_v0.7.8_darwin_arm64.tar.gz"
      sha256 "a7b17720eef08933090bda06fae5d959f9e20a38039a1de466007fe545c3835d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.8/cie_v0.7.8_linux_amd64.tar.gz"
      sha256 "38e11ad19b86a5260282f43f0870da366163118eb966325dd0f8965f25fac58c"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.8/cie_v0.7.8_linux_arm64.tar.gz"
      sha256 "937eaedbc50346c2535f1c9646e314ff5505375cc6e33bac22a4efd82f208765"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

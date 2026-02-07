# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_darwin_arm64.tar.gz"
      sha256 "b405d080472dbcce85436a7a436d5595d5acebb0e9a126894247838ca98dce82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_linux_amd64.tar.gz"
      sha256 "3768b9b52f05f57eb5ee84a8fed2ddc5421d43d13f8e9b1e4633482f1a4d1d34"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.6/cie_v0.7.6_linux_arm64.tar.gz"
      sha256 "03388429706eb6f293dc4e45530f60c1d5c0003abfbe49963cf1aecc038e461c"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end

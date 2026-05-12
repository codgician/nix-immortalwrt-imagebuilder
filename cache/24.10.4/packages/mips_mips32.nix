# 24.10.4 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-5iIl47E0HGGxdFZ64WFhVgoWI6ZoAj8GuU2BIN1PG3k=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-zfcqazX6SXqMwWkB2C4iYYbY4/kvWhxSeaeY4F/HjM8=";
      name = "mips_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-wAcyANTAJM3sP7+rSGJ8Jz1rdODTZuRoCv7JWZPsobU=";
      name = "mips_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-TmloUlYb7Q1py7V+Gf+dPJWzJakBCOQrH6qnYJt+KBE=";
      name = "mips_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-GuUZIXMGHcc8dvulW7hD7V1z5FAXxIOha2gG6VgsPpY=";
      name = "mips_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-qpd/B1sdqEoLGVuMxgERGtgbtImA4ql04LAvFkluOdg=";
      name = "mips_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

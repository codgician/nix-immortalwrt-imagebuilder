# 24.10.0 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-/caKbHPo0s5sVZJmVqo5t+xfg2Hc5boyL3xKGGmYagM=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-Phzd42MLfeFMh6LTMBVWUrVo+KF0mXEGYgnnN71MzpA=";
      name = "mips_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-DZmAEofG3y3lVzevtHyobg4/1ZDWq6lhJbgdJjI4VFk=";
      name = "mips_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-gZXbjgIq8YmFTOFhmVdI6tmYNOkll08OeYBUgF9IMCI=";
      name = "mips_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-JOwDv//UsY4YuZZC55Zv2VViEijaFHL3L5cOHW9J+J0=";
      name = "mips_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-XBct7mHVoeNi6nu2hdYRtFqizc1z5sTx64F4PTD+pCE=";
      name = "mips_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# 24.10.3 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-Mw1nVOo812urnJqrVw74WNjfyWpbZILmw2ia9DEUTJM=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-QAp5T86IEt5y1V8AtkpBOR5ZiSwQlHMK0Ce1kA2eR+4=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-HwwKwQf5xwe3wLpLX1SscmQiaoF+Fg/TgJkSpB7Cmvg=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-yfTBNudxICRYelSz5pdmik4SsbANqqfx4/HhyIduH00=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-7Vax3R+I8KjS+pJ5KD6rIpK7eW5eQ/P2OAQ+JAU8lUk=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-/JTgS/u6rbvtS6I7rNETisaUmSRFOs98CZZrhPePGw4=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

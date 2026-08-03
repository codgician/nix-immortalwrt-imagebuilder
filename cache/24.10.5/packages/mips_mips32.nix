# 24.10.5 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-udjbSmxQevzPA2231JG10dG1iH2XM4d55uMnElQZvT4=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-94E5kIyD3G+zGD/mA4+XOZ+3TKLFknpV1ASyNhndkn8=";
      name = "mips_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-drMqbF6deD3vN8IIGH0OkVamnbHt2o9PVc/nbKT6bC4=";
      name = "mips_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-LALth0RnjkpGHDIK/yTz9hZoaE8b76aVE44b/Ev3pi4=";
      name = "mips_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-4AbuSdlTboBo3Gs7l9bRoOW5PWhZYsnr6uMq+Y3YtVI=";
      name = "mips_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-Urh8SVdAno6jpa83Xz6Vzk36uTaF11pXscU+IyCcGJU=";
      name = "mips_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

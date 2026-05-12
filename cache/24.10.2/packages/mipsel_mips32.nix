# 24.10.2 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-bpf1MAGVxMHa3tf7zC8pIDra4BtIvmRyIUz3r0YuB98=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-3OHb456qncGGtLUvE58b+Qu+z0tUHXWLLk2SJYDAiPE=";
      name = "mipsel_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-f2v9npLSzAMZuv4p2yrhGsmxiMroBYgSv56r1EU6qRM=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-GKQJ/4T31IbRQG9Tgu+iYoz6M15uDUtRMw/9eoCo1sw=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-6VQtK+nFO+LuKTNVpudCLEdBW4NiUjfNkxTDzm8ECQo=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-+hcW+2xJe8PjDRWiRz8YLDDQUVtTtXnWGOd3Q71GtNs=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

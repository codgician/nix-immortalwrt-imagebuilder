# 25.12.0 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-q4WapHJXZG1dG6GaVJ2WbtRiwAjSP6deXu5nkYqHGDI=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-06Zdc0AtbfAXZcCfv/lyTt760vfsPg1YA2ixyCOIdow=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-dLJnJRx4pV1QZZUeiEZpn3OERwzMtElqfRnV5/z3Lfc=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-1XW/sLhRvXV4pOnV2JC2nmzMDvFw1GgcnSwYmx/hD7s=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-R9fmfTcYVB2Vfud+IeCpzc4EPeqnZ9LNdGOxDEjetJY=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-HEWVER7Oi9tQNP+Y50cJZCXMDb7Fd0yMbc2OGY6MWjY=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# 25.12.0-rc1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-PS+KzZfywLFyEs72l8zjadDB/FfTWMnMnTGRO02VmNw=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-gW3kHzHsx05frk7n4EhdyJvfg7DFsne15lddJqiXPng=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-Uf0d6tItqu8zYhqLu80L2hqv/u4ARyy5OQxEJXReb30=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-FD/vIP8MVwdq4klIbnJKqy2eW1Oz6/eyb/BfCgqTOrA=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-zgmosCR/YEVVdXUdmLgkdwNbq+y6d0TOKJR0y891pKE=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-PPvwpqJbAIVOA7yXdjSGhDMfW2m26YIfj8tA7E10CFE=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

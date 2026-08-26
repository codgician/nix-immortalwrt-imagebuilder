# 25.12.1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-Q/HWMVxmFJVW2Y0gg0m4puaBFyF5hEHMTJHy1Ozzby0=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-EhTjdh81HXl7SrMXrwr5W2lHim9/wA/Zh+mQyBJsTSc=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-yiQzCGrvvsFE8Y62AEFPqlxjtyjY9sdThndqG/LOGNA=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-N3Ul+yO6Lq/2XxruQ6wHzMkS0L7M2SmI79S87Jv8m2s=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-xhmwNsdkuZGTP4f2uXZp0OSqwzYpOd+SvhAG5Q7/7lM=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-Kc1EGzeGyn3GGTPkQokM6ufEpKbJ42kuDUG40003rqE=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

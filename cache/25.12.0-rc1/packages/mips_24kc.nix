# 25.12.0-rc1 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-dqp21PLh4AMkAe534HZcga7zgXjhqeS1uXm+iZTQnUU=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-BT2aod+UFDi30D8OBeZ9D4i6trBQkFv/ss5zPmhC6/I=";
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
      hash = "sha256-9Z7QzTmKqphCxE1tkd/5+hSVe6x9MICbouIkWvNwYEA=";
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
      hash = "sha256-jfrAz0Xrhxldm9PDq0NSBeUrSIcnol6TdSRcYFn8xwY=";
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
      hash = "sha256-77rQyXZtu1cD6qtm0xaGE0nmicNr6i96AHnsqDYykP8=";
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
      hash = "sha256-u/Xdob9lsaLU3Vua9ANtQVMMbfFE3VJYRq3O8pgryfE=";
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

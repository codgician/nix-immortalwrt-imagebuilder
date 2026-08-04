# 24.10.2 package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-OJcNVMpPQuIC+i7oAZZL+qKgRX6rHUI4Z7AspSwyrLI=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-PNoLn0/5iD41P2QztVNtGeM6fNH7Lf+glgWhm+tsWfc=";
      name = "mips_24kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/base/Packages";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-DT/JJZzf+RIQkvJ8GSEDzPvIfQPi19ymmG1oWsTifN4=";
      name = "mips_24kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/luci/Packages";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-PxKrxRb7ADWcFjQKSIs6bZOLdfSkP33gkIFbvNqFg90=";
      name = "mips_24kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/packages/Packages";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-55JRql7EU7Yj18QokjF7pEwAnZsl0X9wzzZbcDiZwZI=";
      name = "mips_24kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/routing/Packages";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-lxYe7/1eFVgJnyie4dbtqWZopruZLzs+kv8im+MaPFY=";
      name = "mips_24kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mips_24kc/telephony/Packages";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

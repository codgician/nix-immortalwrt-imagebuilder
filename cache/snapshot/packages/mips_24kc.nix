# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-JHlEclx0iIuEhCv5utmunAP4JJJDnBlriSXskZcJ2VA=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-hsy0K8dUPPszHw5/XZ/ORNWLywi/oTkD98lIpxduVYw=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-hFKpv5ES5XzEbIiVf+XrHKQYvq3jPA+iCZ2/83minPM=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-qkbQA9LTZGP0PjdEECoetCT4gutzxihoxZepPJM/yJc=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-2iZVjnzlnrpA23GYdSHPAQ/Ftzmsnscjy21IVfyrwDg=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-Ry6k7Vx356MNi0Yz+M69Yt2ATA0kf+MYdhdn+fK3CeI=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

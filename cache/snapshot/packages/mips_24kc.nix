# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-CpDCN7Zj/q6RdNLb04t0RqzybfNd2sEZXAEL1lgtC2w=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-OQX5dVTaaVmQ6+gqEGBFU11RC7RekkV1kAaiib4nyrE=";
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
      hash = "sha256-zGbYcHvdb9qGjQPrZIX+ZWO9qrjpE924oKQ40iBQJIc=";
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
      hash = "sha256-ys+eNef4jR8LroYsyl+l7n1yK8m80tkE5WZXwyE8T2M=";
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
      hash = "sha256-r593PaisHeHP0Q17ykU4fBGrvAVy+ahxytS25fMjlro=";
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
      hash = "sha256-7O9J2qHjpNSccFMvz2pJiQZChu3vVY7ux4vaTpuB5Ps=";
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

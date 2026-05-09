# snapshot package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-y+ld63Gh1/y+ZzIQUgF1AQd0HiYaRwtqdYruqGKE9C0=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-fRFNHsDWNtXpxe7GOGl4iYbXALQVEM+b8nzp2aq1d38=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-cdcpMEi7m+vwnJspoVwZbSNNVd2OEVl81OzuYrzxh9A=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-LWY0sHiEBANnmm/u9yfx9QWeqbd7VRRyrW3ZQmdLjS0=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-wXLlDgPkdGjX9M7KV3TA5Cw9nIRzD3xnlTSDoE+1Qjw=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-n/vVBKkuT06rstI6eCsPHCEoOER05+jQp7ilKurcpUs=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

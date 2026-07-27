# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-Tg79DFnxOl2EOCZ8YjAvUtSuVdSEZEyat8fQCesvLMg=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-V1mLQDfN/QC+5dTYVrGBDGIF7G9Iyvk/Sk5y92zEQME=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-9EWcXZp75hDYD1N5B2eI4dPqQOZVxpIyi4LKt7LROgk=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-4l+UXu7r1GgDQ8Ypui8ifdi9UxTcZ9TSC/SfaUdq4Vg=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-3q5GRhgqXx8Ie3s7qv6nJ/SzPNIYevCi0tR1Ctf+eSQ=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-nGW5d+4VCJhX96y/AZlNLTjU9KqJgNLiqATiZawyMVM=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# 24.10.2 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-kAq8adZtRiJRmDFSo9fspMt8Yu3NshjY5jY8McFdR1c=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-FNYU5G8tnxRvmtZ1tmx0bCCK9mfu66m6wR5w7QYQ+Yw=";
      name = "arm_xscale-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-4/3Ylrr9PY/7ZmFkJBkRowkUJkPvQUJGiIiq7Z88v9I=";
      name = "arm_xscale-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-2Uje8/CPMyYEeCUgPiSjeflXNywQjTbKZPtC+7z2qh8=";
      name = "arm_xscale-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-CAZT4cdva1hjZPJXYpIn9WOKqmIV0g42jtgHFfjCkDA=";
      name = "arm_xscale-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-CaWMqkIYYDGJ4qboGSZYBNuPZ7i5ykI8T6AhqOVSFL4=";
      name = "arm_xscale-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

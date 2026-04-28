# 24.10.0 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-X7KTa5Z2JItpXoFel6W+PN3gfZpH0NMcp/mw27zyBfY=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-rgy10NXBFNx1ONXz/tYuX0WVtH27TeY0lsszu8D+95c=";
      name = "mipsel_74kc-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/base/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-On8CqMrun8fTqES48AA6Eo7lDgJITI/WQCrTeeeXRkk=";
      name = "mipsel_74kc-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-bcTjH//a0MY/SMF7ZsOa5JqSr9c7xwFtVlKzUKmXg1Y=";
      name = "mipsel_74kc-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-yo9LLXzHn7LRP3EsDcYPa1s0RNvZCq2TSYSG2DuxvPs=";
      name = "mipsel_74kc-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-wAWnJCtxt5zKiTVgH6S1JEQPFm5lh7ebhrAfeKOvP70=";
      name = "mipsel_74kc-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/mipsel_74kc/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# snapshot package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-+M6Ay8oDbxY9f/AyzNIekWwnOMUjQPCcKBtz1gIrrh4=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-6JeQuC5H4gdhOJ/CRG15RmlHi0/T8sA54fBWPknxLZA=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-dq8lek8pqbBQB2yv+idW7h+C0HG/MSsk75OYGSxERkY=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-/no5oWOjK49+bOvA8WaMQS10lZO6nI0J7U2d+dVWfng=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-OGj9y2RLuES/meiMjtLfYGvWFfwW3AIwuGvINUs7r3s=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-oivxANzPLAbTI5yxzKGG9BgOQQRzLmj5+11kLKtEsqY=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

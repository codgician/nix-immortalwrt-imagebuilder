# snapshot package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-HNOGax1LQGqD7i+2VLmS1PI3HyiDlFMTxwwcQCiWeh8=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-YXkYWaDMzMKezonz+Aoj6I+gbwImqM8/8C0nh7secEo=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-EXtI2IH2qz/d01mDxIPeH2rg5E54f6FLPavNiQ1dGtQ=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-D06c5KYbvPRQm6PTk1FvrZKxgZF+R++zVfZNxXaLHTs=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-jwcsEJTdNV1Yw74SzczS0hH8bNsWAvq71gHyFIUV790=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-yLq4NxzmHsJTPKMpM7Xwki0ydrAJBG6GuKmQBd3ErU0=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

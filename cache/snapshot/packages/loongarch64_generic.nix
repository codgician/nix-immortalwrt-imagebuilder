# snapshot package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-o3/en5Kd5TMxy+pMea4kERgwOqEejpjOO9HOGnyFEug=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-4jLVB1VBAeFgDKzt7QWnzSz5HuDPGIGJHPQxq0uWRdc=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-lb/78rZO1r4fgBTtpYfKsreMZAaL+RN/DPORsj70jQs=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-xIygVWt8KovlykaXsSys4kX2FZ5eb0putWAvupIw1V8=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-UsSYUvWs2n/ub7WsIxwf+hcZ2qA+stw5DmTkOaqtC+0=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-mV4BOt/XDdK/F+pu1RWI6J+VVIX5xkzSUV0g6k/3f7w=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

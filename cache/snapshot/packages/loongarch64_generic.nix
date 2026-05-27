# snapshot package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-nAUUIVgeRlYehG9wNwtTe1lEzDOFBOPemBRcYC7s3zQ=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-TS0rffRa/fTIYz49EcQS60ig1+f3sOv7YpJI36vHok4=";
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
      hash = "sha256-JZ5dhgAISeihgxddXbHS7NZIB0c7xrju/fyGNUPhzDM=";
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
      hash = "sha256-qZ0xEyBFHHYb0nvIbtLAGIExLqyUK1gAbCsvUqY66ZI=";
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
      hash = "sha256-q+Tc4VxOtDm3Drk+wrBXyqBjFD6vzN806bR76qnwQqU=";
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
      hash = "sha256-Gt86IySDgoCyQCMGILuHN3WtfbRZWGG87Q8WS1c/mIk=";
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

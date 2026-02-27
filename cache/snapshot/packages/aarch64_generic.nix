# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-2nnjLA5DhXsqjDceMEzFgeQyYIWQslyOByOu8l5WQ9o=";
    name = "aarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-y7ngSQnEwhU3XJOvjnkaCqOP9t32ErSvw3M4JP6qFDY=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-+U5YveHDA2zyubbPhNTeqIz4WGi/J/8ThuvGoUwfzbY=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-jOaGrTQWNTMsw6Zkol7By0cL8T5A3S6LtASW/qqn9Og=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-EZwrWIXcPbnM0fFBoNnxte3e3H+/1hvBTtFx8JfTx9k=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-Kvl0m2K3eHQgY2ReLWauLOarvD2vmLw0dqOBzgmK6DA=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

# 25.12.0 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-tGqD/gGZMu0yDq2Z1RuoGZZ0WjhBtCtLMqowBhHdGjY=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-35fKydC+58TuqWeobJG6SOehGXNUNtnODd3ZckCOXaI=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-JsxSZIBT4N9GA7SJvtVYuMYfBvxJTetA8RHm+ES9wI8=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-QSHE1fGlrpnBG3fZmMwLOQKor8qICWc0LXsaisYRe8w=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-PjqknOGBpl+YHnELd8EAX6Ji1d9aHqTn91Gmc/1EJdg=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-YxGPcm+tM2NomgX6Z3QOuKUK9QYozvYwUuXIp2cer3U=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

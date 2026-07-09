# 25.12.1 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-1qRF68jlGmffveOG4ataoy3gYt4UogiojXRyzo7orYY=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-XLn6j9exRnJXCVhIQgew9Djaf7YnHwpbHddrbPpvZkg=";
      name = "aarch64_cortex-a76-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-77UCJbKD/p1VEdirmXk50DiAWc7XtVyR4fJPxBuwyNU=";
      name = "aarch64_cortex-a76-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-Cg9L+E4FBlnZ1sx2KBXI3EgHKjr8hfRMsed1L8NqxJU=";
      name = "aarch64_cortex-a76-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-vM5mBudutTW8tri82p/VXaAxH6WhHFuFc21GAuj2lhc=";
      name = "aarch64_cortex-a76-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-jjQNqX2fesDPwF4CKoaTlHjBrPAsTIXRJPzx8EEKuqs=";
      name = "aarch64_cortex-a76-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a76/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

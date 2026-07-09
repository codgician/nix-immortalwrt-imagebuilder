# 25.12.1 realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-L2Vgu7H4pk5E27duZp4pmbymM/5bjBcyZGHO2T2DPmI=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "e7f1d7cc49489f9858ad020bdff6d732bfc5a394b5ea279091b71a3741a8d7e3";
    filename = "immortalwrt-imagebuilder-25.12.1-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Yv0T66mGWrW3CFJqgNYcXKiDdqxMU9RRTePCZ2bQhqs=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d8677f18dc2e84ae4267074cb453bee6";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-d8677f18dc2e84ae4267074cb453bee6";
    profiles = {
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "poemgr"
        ];
      };
    };
  };
  kmods."6.12.94-1-d8677f18dc2e84ae4267074cb453bee6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/kmods/6.12.94-1-d8677f18dc2e84ae4267074cb453bee6/";
    sourceInfo = {
      hash = "sha256-KJIv63pMtwJujLyaF/fIXNc9JJKbAZuubEXis/X3L1k=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/kmods/6.12.94-1-d8677f18dc2e84ae4267074cb453bee6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-s7DLDJ5T+ptTo5XLQG4EPypP1Wn2Obsoa51kRZZUQAg=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}

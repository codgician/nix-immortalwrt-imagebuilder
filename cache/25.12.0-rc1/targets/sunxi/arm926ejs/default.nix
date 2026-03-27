# 25.12.0-rc1 sunxi/arm926ejs
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/";
  sha256sums = {
    hash = "sha256-8EdloXd950ylffA6K2W3gCtrgQTWRjAdz6crd/YMX/s=";
    name = "sunxi_arm926ejs-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/sha256sums";
  };
  imagebuilder = {
    sha256 = "24fd661ecedd9de02d60cc6e930d7e9681a5a14455994e29c58b025cf896ed2f";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-sunxi-arm926ejs.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-fPtJppa374K85Et7At+rOTcQvxyUnAT8+GyhFWS2DH8=";
    name = "sunxi_arm926ejs-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "3e90df00bbe15c63abc1b8263d1aac06";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-3e90df00bbe15c63abc1b8263d1aac06";
    profiles = {
      licheepi_licheepi-nano = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
      "sourceparts_popstick-v1.1" = {
        device_packages = [ "kmod-rtc-sunxi" ];
      };
    };
  };
  kmods."6.12.74-1-3e90df00bbe15c63abc1b8263d1aac06" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/kmods/6.12.74-1-3e90df00bbe15c63abc1b8263d1aac06/";
    sourceInfo = {
      hash = "sha256-OBNKPxDtxXMYfLDiAHMAi6W3hZKZydEnLwITKSQ0v7Y=";
      name = "kmods-sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/kmods/6.12.74-1-3e90df00bbe15c63abc1b8263d1aac06/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/packages/";
    sourceInfo = {
      hash = "sha256-gM5jZCGMKPGa5PcGNxzceJo6lvxzc5CVwd62tsPLKmQ=";
      name = "sunxi_arm926ejs-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/sunxi/arm926ejs/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}

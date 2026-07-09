# 25.12.1 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-Ft8JyNz5vwrHP6bA4+21DBlI1REhg9QLdC57Znu0Uus=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4fd2a7dade15399f9a6137146633b5e78f6933a5f43b932efa395906fc4dbe34";
    filename = "immortalwrt-imagebuilder-25.12.1-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UZ9vwxAswWBZZvL2Och/tRno48dyX617QxIFCEpRgrQ=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "ae276216e2b072395948500f93aeb952";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-ae276216e2b072395948500f93aeb952";
    profiles = {
      i2se_duckbill = {
        device_packages = [
          "-dnsmasq"
          "-firewall4"
          "-mtd"
          "-nftables"
          "-odhcpd-ipv6only"
          "-ppp"
          "-kmod-nft-offload"
          "uboot-envtools"
          "kmod-leds-gpio"
        ];
      };
      olinuxino_maxi = {
        device_packages = [
          "kmod-usb-net-smsc95xx"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-leds-gpio"
          "kmod-sound-core"
        ];
      };
      olinuxino_micro = {
        device_packages = [
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.94-1-ae276216e2b072395948500f93aeb952" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/kmods/6.12.94-1-ae276216e2b072395948500f93aeb952/";
    sourceInfo = {
      hash = "sha256-CQ1smh3miifmQTBGgx3LFhhkkAAHp886v5/rOmtp48o=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/kmods/6.12.94-1-ae276216e2b072395948500f93aeb952/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-eCeZ4n032OGkvOWcKJKEoTru4gJxuAS3THDvbLdofLI=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mxs/generic/packages/packages.adb";
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

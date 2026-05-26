# 25.12.0 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-SItqqkuSdpeLajVhWkq1QxpJp99Rq0X7nJOPs/vrL1s=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2becc1515f5974cc02299a7e70290f5ede3d8ac8bd74e30cc27900df1179f890";
    filename = "immortalwrt-imagebuilder-25.12.0-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MVqZgnIBswDBXxvFCgOvGY2WOcy2FTMsyl0EWymK6Rs=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "e3323a782141f6dd42dcadd2a2ac0413";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-e3323a782141f6dd42dcadd2a2ac0413";
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
  kmods."6.12.87-1-e3323a782141f6dd42dcadd2a2ac0413" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/kmods/6.12.87-1-e3323a782141f6dd42dcadd2a2ac0413/";
    sourceInfo = {
      hash = "sha256-0wQkGKkLZP89MqGm2Yp0nGBOG9wrHYk1T6r+RLh/s2E=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/kmods/6.12.87-1-e3323a782141f6dd42dcadd2a2ac0413/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-7rBs/ip25FcvLY1odJleRoWqyw2RUSJF4xvLmFlFBok=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/mxs/generic/packages/packages.adb";
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

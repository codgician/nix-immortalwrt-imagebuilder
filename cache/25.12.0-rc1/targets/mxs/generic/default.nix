# 25.12.0-rc1 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-B4xtN81jEDRfh6zJOUDFhkAWF1fFZHIfN6GygJZtrug=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d8b424b2f35138242abb499f151e2ca9bca42d137f05025751930e9194b38095";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tst/4ExHDEQRH6yHMJ9pK1/tBBZLjprMKpYSlc4Z+K4=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "4fe46ee74cda59c1daaf3acc7ccae731";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-4fe46ee74cda59c1daaf3acc7ccae731";
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
  kmods."6.12.74-1-4fe46ee74cda59c1daaf3acc7ccae731" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/kmods/6.12.74-1-4fe46ee74cda59c1daaf3acc7ccae731/";
    sourceInfo = {
      hash = "sha256-pLCLbQiv8j4oNEQaXOlScJ1edXBEo1W4kBFIUeGi84E=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/kmods/6.12.74-1-4fe46ee74cda59c1daaf3acc7ccae731/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-/qsNIKj3ZXSNl5VQEM8dSO5kYwOomjrAjFXUURGhrVU=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/mxs/generic/packages/packages.adb";
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

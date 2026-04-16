# 25.12.0-rc2 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-IqnTZMarMqgJ3oSu5kM69aHN9cCU5rBL2+CBGH/pm7Y=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d6a220e97fcbef5bc4ea6a8ccf9e28dc24d31f97ee6418115ad6290cb519b91e";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-TznA6lPrzYUjF/O3zxMcVCR8PDVVvJ8OOtqBzrct64Y=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "68b07718c9e4c94e0ccdb04cb52af267";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-68b07718c9e4c94e0ccdb04cb52af267";
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
  kmods."6.12.79-1-68b07718c9e4c94e0ccdb04cb52af267" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/kmods/6.12.79-1-68b07718c9e4c94e0ccdb04cb52af267/";
    sourceInfo = {
      hash = "sha256-YraOFyRDDqQQ198Krn9ohatu3h98dScuvoPQ/GsYF/0=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/kmods/6.12.79-1-68b07718c9e4c94e0ccdb04cb52af267/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-YhjVxIBhRNycKAA9Q2BAw0L5Ex0YQjLjR468pLJpN+A=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/mxs/generic/packages/packages.adb";
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

# snapshot mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-OhhDGHaqjWFpBQ1t4zBZLI7XD/Ah2jYOFgKoGbEzsJc=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0c3b796c4646204f6edb039e59ac574eabfbb425adf33ce14353664fe5bb4965";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+nTLtZN4HSOMs3q9IX7XpBJDKJHawLFVfXhEXJZEsuk=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "9894e15b2dce05b30a66e8c23e506e2d";
      version = "6.18.39";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.39-1-9894e15b2dce05b30a66e8c23e506e2d";
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
  kmods."6.18.39-1-9894e15b2dce05b30a66e8c23e506e2d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.39-1-9894e15b2dce05b30a66e8c23e506e2d/";
    sourceInfo = {
      hash = "sha256-fJaOx9qTnJ0jTkUrTwpGk/zwTpWjXVpPN17hODCEV3s=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/kmods/6.18.39-1-9894e15b2dce05b30a66e8c23e506e2d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-VvG4ovAUb/jSOxmIKQ6ZqfxgP1hd5/O0cDh1D7Ydv78=";
      name = "mxs_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mxs/generic/packages/packages.adb";
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

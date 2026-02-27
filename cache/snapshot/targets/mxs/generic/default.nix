# snapshot mxs/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-cte9S1jnTVrvcQ/i8ThB4bu8udR/gTuJQ/Q7FfHbF5g=";
    name = "mxs_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "379803a19278a51c3ad13f42d061a266696ebd88547ad3a831d9eb316d00c7d6";
    filename = "immortalwrt-imagebuilder-mxs-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BWZC3oRLkaq2r7hIKjGlyS9WpvhTqaARzTyrBJstbMo=";
    name = "mxs_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "f3bffa7359fa9e4037cd1c11e5316c97";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-f3bffa7359fa9e4037cd1c11e5316c97";
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
  kmods."6.12.67-1-f3bffa7359fa9e4037cd1c11e5316c97" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/kmods/6.12.67-1-f3bffa7359fa9e4037cd1c11e5316c97/";
    sourceInfo = {
      hash = "sha256-FUp2ROP3kTzcP8Dw0ZbEj1bHoic5w9R2pXCBQlz43u0=";
      name = "kmods-mxs_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/kmods/6.12.67-1-f3bffa7359fa9e4037cd1c11e5316c97/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-40i9ro+5IPV4nUVWfS1aBkrhGPDBgdpqkmPdrapt6nA=";
      name = "mxs_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mxs/generic/packages/packages.adb";
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

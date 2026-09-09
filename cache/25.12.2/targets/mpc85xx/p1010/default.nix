# 25.12.2 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-0qcz50HWjcAxVyjEinVPI4k2UwXXmFI0Pe6gXH0yQqg=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "547b8ac7de605ef16fb63b32bad3d81f454a7b9f3f9d95b2a33040141ee4dd76";
    filename = "immortalwrt-imagebuilder-25.12.2-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-z/6AkHhC9wOXnMgaoU8vUK+BJSJqHQnvgNGzfFrAwUs=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "8fd69376997821c0759a750ea6e243ea";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.103-1-8fd69376997821c0759a750ea6e243ea";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [ "kmod-usb-ledtrig-usbport" ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
      watchguard_firebox-t15 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.12.103-1-8fd69376997821c0759a750ea6e243ea" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/kmods/6.12.103-1-8fd69376997821c0759a750ea6e243ea/";
    sourceInfo = {
      hash = "sha256-1vHFvMIL9rg7LpiifI8NmjgDL+lEbETogzsQp6+dmRM=";
      name = "kmods-mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/kmods/6.12.103-1-8fd69376997821c0759a750ea6e243ea/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-MrzBosZAkV4YvhtoWGVs+oD825h8xsUqObJVoulfdPw=";
      name = "mpc85xx_p1010-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p1010/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}

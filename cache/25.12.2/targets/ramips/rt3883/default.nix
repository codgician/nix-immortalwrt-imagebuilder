# 25.12.2 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-z7Z0nL/euObamdYV5JLgSy9mmtg+n2rwnxaJc9h8SlY=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "f611b2a99f2c225a3e82841dfe747eb5979a913d9b31b226b4f43ec820efcb59";
    filename = "immortalwrt-imagebuilder-25.12.2-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gNJOgWVd7DsCpsmZzQ5lmBzGd/3WW3fA70S00lJDjII=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "e2170efb76dd85c25b5e44d47903b99d";
      version = "6.12.103";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.103-1-e2170efb76dd85c25b5e44d47903b99d";
    profiles = {
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-e2170efb76dd85c25b5e44d47903b99d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/kmods/6.12.103-1-e2170efb76dd85c25b5e44d47903b99d/";
    sourceInfo = {
      hash = "sha256-Kaow6hKOSPbZjqHqQDzdNRh0QB9Ig702beZ4ssWdpZc=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/kmods/6.12.103-1-e2170efb76dd85c25b5e44d47903b99d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-ALD0eJHXZ31tlIMJPqpQ2qifo8cdXRA1bBwmLkGt+p4=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/ramips/rt3883/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}

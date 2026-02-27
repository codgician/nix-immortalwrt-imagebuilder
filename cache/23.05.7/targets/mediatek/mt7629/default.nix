# 23.05.7 mediatek/mt7629
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-/RzC9l20TAxk1PNdYRyqcLtYhpMRPRKlReE7gBsAxV8=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "70a9f4a83f65d5346ac57f8668d8892c57145e4160ea2680961250f98534d1b6";
    filename = "immortalwrt-imagebuilder-23.05.7-mediatek-mt7629.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mJR6yKLF51aK7EwtOBc6NISwT85rpf7NDl595WzCy2Y=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "6f958aba583f7ded78e84fd9a786d2fe";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-6f958aba583f7ded78e84fd9a786d2fe";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-N3Q4Z1fM/qvIjKGfbFg8Cd+sRSi1i8ofwDCoOgrJ6t0=";
      name = "mediatek_mt7629-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}

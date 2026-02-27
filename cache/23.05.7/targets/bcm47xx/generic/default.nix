# 23.05.7 bcm47xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-n/3Ypo/I86HMCmo/3i3PsLnjklcBt3UbiNeX6Ec9DEs=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2c2e66dba4a6fe6f871c98c5a167f01969c087b47044b48e956653681600830a";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm47xx-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-eGte+zE0DQ4Xhu9k7DMo8FCzrzacQWqR3Hjnrdz2cj0=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "091f5eae98e74c5069d387261cab6b4e";
      version = "5.15.195";
    };
    default_packages = [
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.195-1-091f5eae98e74c5069d387261cab6b4e";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-QkZ9n7sdpASJ76X8zCXk0uKZLGHj7BzUNZJyT+f0P8o=";
      name = "bcm47xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}

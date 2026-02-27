# 23.05.7 bmips/bcm6358
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-5xjgsHfWqo0zEcw+3mGDXHhFtQq/k5v/TzMZT1hqWus=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "b4830b0b0ddd8410f140c55e8a205f40a5e723c6e6244c569bc491ea45bf7c6d";
    filename = "immortalwrt-imagebuilder-23.05.7-bmips-bcm6358.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ScafuUHDrohKCWa/gvd0rAUKdm+GWRSroqCYKJ2wFwM=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d5de7589d70f22ca3bee62a19101ffc7";
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
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
    kmods_target = "5.15.195-1-d5de7589d70f22ca3bee62a19101ffc7";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-qH2dBPRTFNDpFwt1O6ZHpP+Nw7xqZ4i4+RuI2nzJ4IM=";
      name = "bmips_bcm6358-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6358/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}

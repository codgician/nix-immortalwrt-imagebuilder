# 23.05.1 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-KGqA8Q9EGPnTIbBHFK9QCYUCDo3XHda8KMTG7ebagHg=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "5a31daa546d24a9360e3e76df6ca6775a89ee5789ce4f2f952436db62963330e";
    filename = "immortalwrt-imagebuilder-23.05.1-bmips-bcm6358.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Cvn7LLaTJfrg5XVuEEZNbiWH1FA9LkWN8T4qiZBBBiM=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = null;
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
      "ipv6helper"
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
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
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
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-17gLQUknIYjr/VSONOPmusuZS7felOCYSlTQQ45G4Y8=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm6358/packages/Packages";
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

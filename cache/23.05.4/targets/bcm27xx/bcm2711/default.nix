# 23.05.4 bcm27xx/bcm2711
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-Ix7dS+OnDCZFhMOqHQ0DuoaaFsisK/uyb67xTlOT2v4=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "89dcd93497474e6f7a5ac12332e51da4edbf5960dd7cc06bcbfd2780f53c7102";
    filename = "immortalwrt-imagebuilder-23.05.4-bcm27xx-bcm2711.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-mzxKQ9BKDS2y8zjtyzeItsYnKuUtlOqzexGbO838TfI=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "null-null-null";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-eyijv6YBghMnCv4XqPaNxOplCinLZd2p51YK7n5lxyA=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/bcm27xx/bcm2711/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}

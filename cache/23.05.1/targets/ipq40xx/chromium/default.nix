# 23.05.1 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-gh/RXou1Q/smqtATUpbrUZLeIJctShg1UouYKD2gyy0=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "d983579ccd0f385367967cfec00fd2e24b822cabcc81fbf1eebf402b520919e8";
    filename = "immortalwrt-imagebuilder-23.05.1-ipq40xx-chromium.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-K4WlbnIQA+niPF/ePtSxdcFlngZXZL6cTINCnmfoONM=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      google_wifi = {
        device_packages = [
          "partx-utils"
          "mkf2fs"
          "e2fsprogs"
          "kmod-fs-ext4"
          "kmod-fs-f2fs"
          "kmod-google-firmware"
          "kmod-ramoops"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-eTYIeM1bHGCLE8q6d/WGEDUYv+dTbeP8H5jVnBSwALI=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq40xx/chromium/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}

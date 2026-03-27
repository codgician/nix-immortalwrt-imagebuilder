# 23.05.6 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-1n7fEnCFfa0B8I38Onr7raN8u7DLkcXUlk8GwmjhQtQ=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "ad729518cf598513183d102c68b8e65421b9bf73ec7cfd3a4e0682e6a6a73ade";
    filename = "immortalwrt-imagebuilder-23.05.6-ipq40xx-chromium.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Zu0GnxE2lXVSLrM220Vmzdzg99r9Rxa36LROn4eQ0sY=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7f27723de7d4057a08bd7b92abe9cb24";
      version = "5.15.189";
    };
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "5.15.189-1-7f27723de7d4057a08bd7b92abe9cb24";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-zSv2k0XY0eYwujZiumTXK1v5WCuCNj340MPWgN1qOVw=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq40xx/chromium/packages/Packages";
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

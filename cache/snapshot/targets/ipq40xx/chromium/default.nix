# snapshot ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-dKdqSuplWlIRT6Xuht4FrChJBNRcdnIImdJx+SZt7zM=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "fce4ad338e7adfae5f9ba5a248b624b70b816b6db3e98756bd0706ff47168005";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XkVHepMkojNVN/j2plQkctK3P1MBAnHNEiz2mV1ft/E=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "fd7809705e8147330c1e22d0fb6b9c4f";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.92-1-fd7809705e8147330c1e22d0fb6b9c4f";
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
  kmods."6.12.92-1-fd7809705e8147330c1e22d0fb6b9c4f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.92-1-fd7809705e8147330c1e22d0fb6b9c4f/";
    sourceInfo = {
      hash = "sha256-nOLNwbQMRfPUu4O/vujtNjvPKfiRpQ5bi/7RISHNjzc=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.12.92-1-fd7809705e8147330c1e22d0fb6b9c4f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-L/k/aYMtOrUB2tCIEpecXv1KsHCDEJ7uk3cEZuTFluc=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/packages.adb";
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

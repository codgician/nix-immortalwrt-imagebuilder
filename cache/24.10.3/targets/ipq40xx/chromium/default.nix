# 24.10.3 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-SYPpxn+YbNlmHx+RV9Ph8GLIKXLtffwT1k0qYh5O3Sw=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "be01516c4c4679dc7f71f1f85cde4a4d6feb5d520684375464714b56637fadf0";
    filename = "immortalwrt-imagebuilder-24.10.3-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GtTILbUM+mRIT385MNJQOx0GW+r9ge3ahy7S85GultU=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8104809f850a45ab24c966a2eecff605";
      version = "6.6.104";
    };
    default_packages = [
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
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
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
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
    kmods_target = "6.6.104-1-8104809f850a45ab24c966a2eecff605";
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
  kmods."6.6.104-1-8104809f850a45ab24c966a2eecff605" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/kmods/6.6.104-1-8104809f850a45ab24c966a2eecff605/";
    sourceInfo = {
      hash = "sha256-eTdRv6BJuxjEvtGYhwf0KixsoKecWdmUpjJPDrfjKHA=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/kmods/6.6.104-1-8104809f850a45ab24c966a2eecff605/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-79yel1LAOrrjhZ/BL5iav1K1NuMe9rNx+fm34ARLViM=";
      name = "ipq40xx_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ipq40xx/chromium/packages/Packages";
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

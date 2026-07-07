# 25.12.1 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-VD8f8LgvSHf3BlJvKHCsiPZ/fiJrtgfKAhXDufzrRhA=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "76f414158dd0027686297acd2c1cb97140218050f6307ea4ad05fa286929c49a";
    filename = "immortalwrt-imagebuilder-25.12.1-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xZXdjaYIX/vqodgeLy8DyRlKRm16SgnuTCoD2Kd79M0=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "a4234d538863d969ce2a8c6c370e3072";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
    kmods_target = "6.12.94-1-a4234d538863d969ce2a8c6c370e3072";
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
  kmods."6.12.94-1-a4234d538863d969ce2a8c6c370e3072" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/kmods/6.12.94-1-a4234d538863d969ce2a8c6c370e3072/";
    sourceInfo = {
      hash = "sha256-wVB23zEwfercAED8Yq81CK8NRf4kcf4DKVoXDbzScQ8=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/kmods/6.12.94-1-a4234d538863d969ce2a8c6c370e3072/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-N3oKbSm+ygajtkemcF4NmpaACS6Ehjtbs9BtRbliNuY=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ipq40xx/chromium/packages/packages.adb";
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

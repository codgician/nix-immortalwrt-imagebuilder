# snapshot ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-9luvlsudikUKFiARtdPl9DQsBv3n6Wm1RG+fYVqHdiU=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "94034a625180236effb01abbedaabe68b15d17e25f0aa9082d6ce58f8648aa27";
    filename = "immortalwrt-imagebuilder-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5vgrKGJzV1NvEmIEjC4V6rx+QhkLnYeDUCF4nTB5aCE=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "dbe9a49b61a655295939bd697f45586e";
      version = "6.12.108";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-phy-qcom-ipq806x-usb"
      "kmod-usb-dwc3-qcom"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
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
    kmods_target = "6.12.108-1-dbe9a49b61a655295939bd697f45586e";
    profiles = {
      asus_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
      tplink_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.12.108-1-dbe9a49b61a655295939bd697f45586e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.108-1-dbe9a49b61a655295939bd697f45586e/";
    sourceInfo = {
      hash = "sha256-t5voN8NMhhtG5ZFtOmUYDXQcD+T2Zc4nf0RVxXRwsR0=";
      name = "kmods-ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/kmods/6.12.108-1-dbe9a49b61a655295939bd697f45586e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-4nYe87af0KBUq8slMUAfHml31/3WLvgnMo6UzGqRE/s=";
      name = "ipq806x_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq806x/chromium/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a15_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a15_neon-vfpv4.nix;
}

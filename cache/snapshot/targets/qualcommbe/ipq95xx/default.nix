# snapshot qualcommbe/ipq95xx
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/";
  sha256sums = {
    hash = "sha256-QL9167DQguIddMNwQI0MA5Ma8vjDpCZNRUb3nixUa2k=";
    name = "qualcommbe_ipq95xx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "f1370090d289f4d3be369ac21da342e96474fd9cc39f251d839e9dd744d1667c";
    filename = "immortalwrt-imagebuilder-qualcommbe-ipq95xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uXAAg10le33k/HCy5XveQMain0XqqCT2V7DDrccc9t8=";
    name = "qualcommbe_ipq95xx-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "e99109ac3a97682eb4c21ef26ffc9387";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-fs-ext4"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-qcom-ppe"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
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
    kmods_target = "6.18.52-1-e99109ac3a97682eb4c21ef26ffc9387";
    profiles = {
      "8devices_kiwi-dvk" = {
        device_packages = [
          "kmod-ath12k"
          "ath12k-firmware-qcn9274"
          "ipq-wifi-8devices_kiwi"
          "f2fsck"
          "mkf2fs"
          "kmod-sfp"
          "kmod-phy-maxlinear"
          "kmod-phy-realtek"
          "rtl826x-firmware"
        ];
      };
      askey_sbe1v1k = {
        device_packages = [
          "ath12k-firmware-qcn9274"
          "f2fsck"
          "ipq-wifi-askey_sbe1v1k"
          "kmod-ath12k"
          "kmod-hwmon-pwmfan"
          "kmod-phy-realtek"
          "mkf2fs"
          "rtl826x-firmware"
        ];
      };
      qcom_rdp433 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.52-1-e99109ac3a97682eb4c21ef26ffc9387" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/kmods/6.18.52-1-e99109ac3a97682eb4c21ef26ffc9387/";
    sourceInfo = {
      hash = "sha256-/Ne0duaM5DGwGvIjVtH+GJ4tAEbg/Yf+cEFazCwTpFo=";
      name = "kmods-qualcommbe_ipq95xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/kmods/6.18.52-1-e99109ac3a97682eb4c21ef26ffc9387/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/packages/";
    sourceInfo = {
      hash = "sha256-lCxmfUp0euwLqGCB4QnjvqUiMk8lvWPnCeNVkZlbFmE=";
      name = "qualcommbe_ipq95xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommbe/ipq95xx/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}

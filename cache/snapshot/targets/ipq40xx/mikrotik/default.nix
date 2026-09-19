# snapshot ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-sUFJOiWCOFp+9sqC8NaSSBSKxu759Rw9P4rE+0xgz8o=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "08a5ecbb40ef97598742e4b5e70597a9d0b5758c4c88c369fa544686bd3c1a31";
    filename = "immortalwrt-imagebuilder-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5c3eTI5rQuwxDPrR0hSRtou1CQaGpfOA15mMGupxLWY=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "71803117a131680458594cb86bc7f615";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
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
    kmods_target = "6.18.52-1-71803117a131680458594cb86bc7f615";
    profiles = {
      mikrotik_cap-ac = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_hap-ac2 = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_hap-ac3 = {
        device_packages = [ "kmod-ledtrig-gpio" ];
      };
      mikrotik_hap-ac3-lte6-kit = {
        device_packages = [
          "kmod-ledtrig-gpio"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
      mikrotik_lhgg-60ad = {
        device_packages = [
          "-kmod-ath10k-ct"
          "-ath10k-firmware-qca4019-ct"
          "kmod-wil6210"
        ];
      };
      mikrotik_sxtsq-5-ac = {
        device_packages = [ "rssileds" ];
      };
      mikrotik_wap-ac = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_wap-ac-lte = {
        device_packages = [
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
      mikrotik_wap-r-ac = {
        device_packages = [
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
    };
  };
  kmods."6.18.52-1-71803117a131680458594cb86bc7f615" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/kmods/6.18.52-1-71803117a131680458594cb86bc7f615/";
    sourceInfo = {
      hash = "sha256-BuZt8uLGnUJgi97r3iBVeGLXSfQX80CkhDEq6ecKmS0=";
      name = "kmods-ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/kmods/6.18.52-1-71803117a131680458594cb86bc7f615/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-KblYHP2PGviWh0/szamSjkolEvia3iKOFD4VlC1+9AQ=";
      name = "ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/packages/packages.adb";
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

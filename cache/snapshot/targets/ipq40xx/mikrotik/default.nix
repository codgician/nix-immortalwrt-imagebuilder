# snapshot ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-jEJWNBb+K2FXbGMaeBJTa1v2lh8A2xdWObtDYxN2W90=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "8fa68b552a61e7b9260bf870ba408f9bcd797723336475c47b3e5b1b09ae5d50";
    filename = "immortalwrt-imagebuilder-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lNQ9H8fyw1rp9RimbNyT2GnP7FqwadpcGsq6ZdQYJ70=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "3018b80d15cb33eaa03d2205357adef6";
      version = "6.12.92";
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
    kmods_target = "6.12.92-1-3018b80d15cb33eaa03d2205357adef6";
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
  kmods."6.12.92-1-3018b80d15cb33eaa03d2205357adef6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/kmods/6.12.92-1-3018b80d15cb33eaa03d2205357adef6/";
    sourceInfo = {
      hash = "sha256-64Em3Kt928MwDjl+x80yxT6C9NfiaHVjRq8ziT04tXk=";
      name = "kmods-ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/mikrotik/kmods/6.12.92-1-3018b80d15cb33eaa03d2205357adef6/packages.adb";
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
      hash = "sha256-jAjJmVMw7xyk2wB6sad9eMjHCfMVZZfozzcQSZP/qIk=";
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

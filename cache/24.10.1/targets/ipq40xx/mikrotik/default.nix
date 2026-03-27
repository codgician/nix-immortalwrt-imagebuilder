# 24.10.1 ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-XyJzVsuGJL67vLT4Kyl6K6aoNLMuGQ3T/3HfSB7RAII=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "f9c3e6711fc1fa36453a401509b0c76b2e67aeafd8909b08768fc0498246970c";
    filename = "immortalwrt-imagebuilder-24.10.1-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CNhpP5xvnnZCLOjigxtdU8q1jFcmodHlpJ5IuRv2FQQ=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "4e88bcf34b9ec8834a21e9d0e5b99965";
      version = "6.6.86";
    };
    default_packages = [
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
    kmods_target = "6.6.86-1-4e88bcf34b9ec8834a21e9d0e5b99965";
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
  kmods."6.6.86-1-4e88bcf34b9ec8834a21e9d0e5b99965" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/kmods/6.6.86-1-4e88bcf34b9ec8834a21e9d0e5b99965/";
    sourceInfo = {
      hash = "sha256-cIaZJrPt2rAjm6hpHDSM4hpulqa/mCRiSU8GDW825/Y=";
      name = "kmods-ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/kmods/6.6.86-1-4e88bcf34b9ec8834a21e9d0e5b99965/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-wA+H9Xzd6bEVN3YxlbnUYJ3xvsjNUS4K84iLAmyqqjM=";
      name = "ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/ipq40xx/mikrotik/packages/Packages";
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

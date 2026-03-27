# 24.10.2 ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-7uvtumsFcN0bEVomsZPMlGGkhs7OO3LTj+dxRu/0G/8=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "b4747945cf8daada9456c60650ca8c4fdb49f9c3fa243dc95bd197a4215bc7db";
    filename = "immortalwrt-imagebuilder-24.10.2-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3uVVQ+ew3CmsO6adNCW99do6pGPFP5wLtr0gf7Ry3jo=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c58b7adcde52e6c204b0729fcb694337";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-c58b7adcde52e6c204b0729fcb694337";
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
  kmods."6.6.93-1-c58b7adcde52e6c204b0729fcb694337" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/kmods/6.6.93-1-c58b7adcde52e6c204b0729fcb694337/";
    sourceInfo = {
      hash = "sha256-Wh8ml+5PMu+R6pO0MPtsBimjfkd4eY/lAPjUeWhUkVM=";
      name = "kmods-ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/kmods/6.6.93-1-c58b7adcde52e6c204b0729fcb694337/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-aaanWCOxtOdfo34aq38So9yMU+Smw39wGbad0dO0esM=";
      name = "ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/ipq40xx/mikrotik/packages/Packages";
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

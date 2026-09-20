# snapshot qualcommax/ipq50xx
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/";
  sha256sums = {
    hash = "sha256-kjax9TZGXzKDFnY39NuZ8MIeDeYcCQAZRGtMFymmdTo=";
    name = "qualcommax_ipq50xx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "e66f386123ddfb6b994074b618cba257c66f655827322b0d53d0346ecec24c2b";
    filename = "immortalwrt-imagebuilder-qualcommax-ipq50xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uiLyiW0UjJXrTu7kg2OOQkaXdnWQEaRG0lBWTX+z/2s=";
    name = "qualcommax_ipq50xx-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "6c5f2cdde6869bfb44cd915d3b0f1bf5";
      version = "6.18.52";
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
      "kmod-ath11k-ahb"
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
    kmods_target = "6.18.52-1-6c5f2cdde6869bfb44cd915d3b0f1bf5";
    profiles = {
      cmcc_mr3000d-ci = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-cmcc_mr3000d-ci"
        ];
      };
      cmcc_pz-l8 = {
        device_packages = [ ];
      };
      elecom_wrc-x3000gs2 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-elecom_wrc-x3000gs2"
        ];
      };
      elecom_wrc-x3000gst2 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-elecom_wrc-x3000gs2"
        ];
      };
      glinet_gl-b3000 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-glinet_gl-b3000"
          "dumpimage"
        ];
      };
      iodata_wn-dax3000gr = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-iodata_wn-dax3000gr"
        ];
      };
      linksys_mr5500 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "ipq-wifi-linksys_mr5500"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      linksys_mx2000 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-linksys_mx2000"
        ];
      };
      linksys_mx5500 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "ipq-wifi-linksys_mx5500"
        ];
      };
      linksys_mx6200 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-linksys_mx6200"
        ];
      };
      linksys_spnmx56 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "ipq-wifi-linksys_spnmx56"
        ];
      };
      tplink_archer-ax55-v1 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-tplink_archer-ax55-v1"
          "kmod-dsa-rtl8365mb"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      xiaomi_ax6000 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "ipq-wifi-xiaomi_ax6000"
        ];
      };
      xiaomi_redmi-ax5400 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "ipq-wifi-xiaomi_redmi-ax5400"
        ];
      };
      yuncore_ax830 = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-yuncore_ax830"
        ];
      };
      yuncore_ax850 = {
        device_packages = [
          "ath11k-firmware-ipq5018"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "ipq-wifi-yuncore_ax850"
        ];
      };
      zyxel_scr50axe = {
        device_packages = [
          "ath11k-firmware-ipq5018-qcn6122"
          "ipq-wifi-zyxel_scr50axe"
        ];
      };
    };
  };
  kmods."6.18.52-1-6c5f2cdde6869bfb44cd915d3b0f1bf5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/kmods/6.18.52-1-6c5f2cdde6869bfb44cd915d3b0f1bf5/";
    sourceInfo = {
      hash = "sha256-JZ7IHfjaehj6n45ncq7P/GRVTTm4XsRVceKxG+PkXA8=";
      name = "kmods-qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/kmods/6.18.52-1-6c5f2cdde6869bfb44cd915d3b0f1bf5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/packages/";
    sourceInfo = {
      hash = "sha256-tZJdwYuMLoactisXiRxQZmkfYhAipEdtfRfYUKCgFYo=";
      name = "qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/packages/packages.adb";
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

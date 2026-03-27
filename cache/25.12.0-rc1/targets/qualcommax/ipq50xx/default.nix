# 25.12.0-rc1 qualcommax/ipq50xx
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/";
  sha256sums = {
    hash = "sha256-BR5WCs8UvtMnZ5P2sKa59OrZRFkKchsd06dNEAIe/4c=";
    name = "qualcommax_ipq50xx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "7b72e3588e49e8d4b003096b76bfe9d838c5a1a967950f847404148c0216ae8b";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-qualcommax-ipq50xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qcxVI3/GzyS55MfwWgbBS307tdFlYSlu2v97MjTWr60=";
    name = "qualcommax_ipq50xx-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d4f807aeec3624da6c3b988e2ae23251";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-ath11k-ahb"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-qca-nss-dp"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
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
    kmods_target = "6.12.74-1-d4f807aeec3624da6c3b988e2ae23251";
    profiles = {
      cmcc_pz-l8 = {
        device_packages = [ ];
      };
      elecom_wrc-x3000gs2 = {
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
  kmods."6.12.74-1-d4f807aeec3624da6c3b988e2ae23251" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/kmods/6.12.74-1-d4f807aeec3624da6c3b988e2ae23251/";
    sourceInfo = {
      hash = "sha256-ulIx0nyMaiGZlYCxp2e4CIicCgn9WdDtN9UKIQjSq3g=";
      name = "kmods-qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/kmods/6.12.74-1-d4f807aeec3624da6c3b988e2ae23251/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/packages/";
    sourceInfo = {
      hash = "sha256-VsFwM486fD+25QA7O40s+HMBUC2VHw2NqHDYfiSL9/I=";
      name = "qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq50xx/packages/packages.adb";
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

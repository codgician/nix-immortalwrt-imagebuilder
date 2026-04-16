# 25.12.0-rc2 qualcommax/ipq50xx
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/";
  sha256sums = {
    hash = "sha256-Bo8J54zclqFHKMz4jXBGo5CNbqWrD8Le2kdbYJ9DNMM=";
    name = "qualcommax_ipq50xx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "0fd2bfb0310442932bc7f2c92b171d1c015aabae72ac77741154bb21a71b14cf";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-qualcommax-ipq50xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-k1VsL9XeBVL1J/h90KMR36hZh1iVgOn5BEcUJSETXho=";
    name = "qualcommax_ipq50xx-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "354ab3a4d8c2fe2f87a1377311506d06";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-354ab3a4d8c2fe2f87a1377311506d06";
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
  kmods."6.12.79-1-354ab3a4d8c2fe2f87a1377311506d06" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/kmods/6.12.79-1-354ab3a4d8c2fe2f87a1377311506d06/";
    sourceInfo = {
      hash = "sha256-TPpnmN2s86juwS2lXjxTttAQJU+5ewzG5eai5HauykY=";
      name = "kmods-qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/kmods/6.12.79-1-354ab3a4d8c2fe2f87a1377311506d06/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/packages/";
    sourceInfo = {
      hash = "sha256-w2AWg0WLPsVj1zJL05wu5hbo0TcKwDybMQ8kPEvUvUA=";
      name = "qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qualcommax/ipq50xx/packages/packages.adb";
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

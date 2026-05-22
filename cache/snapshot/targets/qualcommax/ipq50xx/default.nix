# snapshot qualcommax/ipq50xx
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/";
  sha256sums = {
    hash = "sha256-VInMCKYQdz7O7ZykpkGfyVzWRjapA9ZLmmDl2qSs35M=";
    name = "qualcommax_ipq50xx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "c9d3cb0ef018c9d6436e311a7b8b0d128b9c39d887d04ceebba800ff6969131f";
    filename = "immortalwrt-imagebuilder-qualcommax-ipq50xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-V37JRZjN5Pe6kk0l5Zd2cEACU3YeJv9NKMUmXqE/DXg=";
    name = "qualcommax_ipq50xx-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "84ff8f0602b2974072b224d06e0e46df";
      version = "6.12.89";
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
      "kmod-qca-nss-dp"
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
    kmods_target = "6.12.89-1-84ff8f0602b2974072b224d06e0e46df";
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
  kmods."6.12.89-1-84ff8f0602b2974072b224d06e0e46df" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/kmods/6.12.89-1-84ff8f0602b2974072b224d06e0e46df/";
    sourceInfo = {
      hash = "sha256-6RJ33r6XJRKqC4foJ/G8mpoxJOefEP5RG9EH1znQQjo=";
      name = "kmods-qualcommax_ipq50xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq50xx/kmods/6.12.89-1-84ff8f0602b2974072b224d06e0e46df/packages.adb";
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
      hash = "sha256-tI106Vn0NVaE2QN8mKj72cmoyaIGInWjc6MYWQ7wdKo=";
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

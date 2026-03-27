# 23.05.6 ipq807x/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq807x/generic/";
  sha256sums = {
    hash = "sha256-aJqWMBLR/F2HwnzDS9NGi73c7TQnvXW6KbiGEj6HWbw=";
    name = "ipq807x_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq807x/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "8cc40e3bc8576716c0fcda640e1b63a33d502ba556e6b5dd8594d0e1444fa9af";
    filename = "immortalwrt-imagebuilder-23.05.6-ipq807x-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Py9tDf5ZEgkVtmTQ8wdhIbYKt8ZB90B4mIuoG5p6/sI=";
    name = "ipq807x_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq807x/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0aaf706a940f621c3c3d4f3d6b8b8a14";
      version = "5.15.189";
    };
    default_packages = [
      "ath11k-firmware-ipq8074"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-aquantia"
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
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "qca-ssdk-shell"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "5.15.189-1-0aaf706a940f621c3c3d4f3d6b8b8a14";
    profiles = {
      buffalo_wxr-5950ax12 = {
        device_packages = [ "ipq-wifi-buffalo_wxr-5950ax12" ];
      };
      dynalink_dl-wrx36 = {
        device_packages = [ "ipq-wifi-dynalink_dl-wrx36" ];
      };
      edgecore_eap102 = {
        device_packages = [ "ipq-wifi-edgecore_eap102" ];
      };
      edimax_cax1800 = {
        device_packages = [ "ipq-wifi-edimax_cax1800" ];
      };
      netgear_wax218 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-spi-bitbang"
          "kmod-gpio-nxp-74hc164"
          "ipq-wifi-netgear_wax218"
        ];
      };
      prpl_haze = {
        device_packages = [
          "ath11k-firmware-qcn9074"
          "ipq-wifi-prpl_haze"
          "kmod-ath11k-pci"
          "mkf2fs"
          "f2fsck"
          "kmod-fs-f2fs"
          "kmod-leds-lp5562"
        ];
      };
      qnap_301w = {
        device_packages = [ "ipq-wifi-qnap_301w" ];
      };
      redmi_ax6 = {
        device_packages = [
          "ipq-wifi-redmi_ax6"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      redmi_ax6-stock = {
        device_packages = [
          "ipq-wifi-redmi_ax6"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax3600 = {
        device_packages = [
          "ipq-wifi-xiaomi_ax3600"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax3600-stock = {
        device_packages = [
          "ipq-wifi-xiaomi_ax3600"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax9000 = {
        device_packages = [
          "ipq-wifi-xiaomi_ax9000"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9887-ct"
        ];
      };
      zte_mf269 = {
        device_packages = [ "ipq-wifi-zte_mf269" ];
      };
      zyxel_nbg7815 = {
        device_packages = [
          "ipq-wifi-zyxel_nbg7815"
          "kmod-ath11k-pci"
          "kmod-bluetooth"
          "kmod-hwmon-tmp103"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq807x/generic/packages/";
    sourceInfo = {
      hash = "sha256-bAnlfCWldLhjd970EkZf1bbDKqtECsaoeYeKDc1tPVc=";
      name = "ipq807x_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ipq807x/generic/packages/Packages";
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

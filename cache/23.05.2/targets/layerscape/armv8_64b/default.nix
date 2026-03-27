# 23.05.2 layerscape/armv8_64b
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-j41ZNOgMtFJr64MjDA21dMtWlA/EBdB6ybzuDKRr6uk=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "d255542e47c6bac5ef8e897a7847af2fa882f4eb8c272d913026d8d7104552cd";
    filename = "immortalwrt-imagebuilder-23.05.2-layerscape-armv8_64b.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-vtwrCT8ZWldIRRymy29AHr5hC7C0rb00R341llrey14=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-storage"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      fsl_ls1012a-frdm = {
        device_packages = [
          "layerscape-ppfe"
          "trusted-firmware-a-ls1012a-frdm"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-frwy-sdboot = {
        device_packages = [
          "layerscape-ppfe"
          "trusted-firmware-a-ls1012a-frwy-sdboot"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-rdb = {
        device_packages = [
          "layerscape-ppfe"
          "trusted-firmware-a-ls1012a-rdb"
          "kmod-hwmon-ina2xx"
          "kmod-iio-fxas21002c-i2c"
          "kmod-iio-fxos8700-i2c"
          "kmod-ppfe"
        ];
      };
      fsl_ls1028a-rdb = {
        device_packages = [
          "trusted-firmware-a-ls1028a-rdb"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1028a-rdb-sdboot = {
        device_packages = [
          "trusted-firmware-a-ls1028a-rdb-sdboot"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1043a-rdb = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1043a-rdb"
          "fmc"
          "fmc-eth-config"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1043a-rdb-sdboot = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1043a-rdb-sdboot"
          "fmc"
          "fmc-eth-config"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-frwy = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1046a-frwy"
        ];
      };
      fsl_ls1046a-frwy-sdboot = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1046a-frwy-sdboot"
        ];
      };
      fsl_ls1046a-rdb = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1046a-rdb"
          "fmc"
          "fmc-eth-config"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-rdb-sdboot = {
        device_packages = [
          "layerscape-fman"
          "trusted-firmware-a-ls1046a-rdb-sdboot"
          "fmc"
          "fmc-eth-config"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb = {
        device_packages = [
          "layerscape-mc"
          "layerscape-dpl"
          "trusted-firmware-a-ls1088a-rdb"
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb-sdboot = {
        device_packages = [
          "layerscape-mc"
          "layerscape-dpl"
          "trusted-firmware-a-ls1088a-rdb-sdboot"
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls2088a-rdb = {
        device_packages = [
          "layerscape-mc"
          "layerscape-dpl"
          "trusted-firmware-a-ls2088a-rdb"
          "restool"
          "kmod-ahci-qoriq"
        ];
      };
      fsl_lx2160a-rdb = {
        device_packages = [
          "layerscape-mc"
          "layerscape-dpl"
          "layerscape-ddr-phy"
          "trusted-firmware-a-lx2160a-rdb"
          "restool"
        ];
      };
      fsl_lx2160a-rdb-sdboot = {
        device_packages = [
          "layerscape-mc"
          "layerscape-dpl"
          "layerscape-ddr-phy"
          "trusted-firmware-a-lx2160a-rdb-sdboot"
          "restool"
        ];
      };
      ten64-mtd = {
        device_packages = [
          "uboot-envtools"
          "kmod-rtc-rx8025"
          "kmod-sfp"
          "kmod-i2c-mux-pca954x"
          "restool"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-Am2WodtypxiYzrmRpw2akBEPQKJjFpmSrziy6PdovMs=";
      name = "layerscape_armv8_64b-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/layerscape/armv8_64b/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_generic";
  feeds = import ./../../../packages/aarch64_generic.nix;
}

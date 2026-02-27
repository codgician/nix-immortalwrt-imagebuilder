# 23.05.7 layerscape/armv8_64b
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-Pb1gtaWj5JRRYUmfwsQSvOjfPQzw3fYoiS4p3KzJoZo=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "5b00a0c435889eff4f57e4e250bbdb406e3410a13a57723d971f40707e93d2c1";
    filename = "immortalwrt-imagebuilder-23.05.7-layerscape-armv8_64b.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-aLd9y2g1KL87cQ1GhDwjP6f4C8vDlLJ82FjQolw5gP8=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "1e968b7e2c298fd92f3d7b774a82c9a7";
      version = "5.15.195";
    };
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
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-1e968b7e2c298fd92f3d7b774a82c9a7";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-30K5dtz0Zm8k9u7BYKm1HLejikngKUd7pFljFj/fI7s=";
      name = "layerscape_armv8_64b-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/layerscape/armv8_64b/packages/Packages";
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

# 24.10.2 layerscape/armv8_64b
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-CuQSd4y9h82HF+KiDq8ApXr+QJ9fL0enpfhfJKgwFF0=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "52768aa3432deb51be00f9d70433983559e54d2a1ec18d24ea6a5b329ac80c58";
    filename = "immortalwrt-imagebuilder-24.10.2-layerscape-armv8_64b.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Gu2U4Zt2m3YdCZDRzsU/rAgWxDcBxWjgIA+0qntRJBA=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "190eb07d6bdd4747a7a23b5e9d2a9b32";
      version = "6.6.93";
    };
    default_packages = [
      "base-files"
      "block-mount"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.93-1-190eb07d6bdd4747a7a23b5e9d2a9b32";
    profiles = {
      fsl_ls1012a-frdm = {
        device_packages = [
          "layerscape-ppfe"
          "~trusted-firmware-a-ls1012a-frdm"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-frwy-sdboot = {
        device_packages = [
          "layerscape-ppfe"
          "~trusted-firmware-a-ls1012a-frwy-sdboot"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-rdb = {
        device_packages = [
          "layerscape-ppfe"
          "~trusted-firmware-a-ls1012a-rdb"
          "kmod-hwmon-ina2xx"
          "kmod-iio-fxas21002c-i2c"
          "kmod-iio-fxos8700-i2c"
          "kmod-ppfe"
        ];
      };
      fsl_ls1028a-rdb = {
        device_packages = [
          "~trusted-firmware-a-ls1028a-rdb"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1028a-rdb-sdboot = {
        device_packages = [
          "~trusted-firmware-a-ls1028a-rdb-sdboot"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1043a-rdb = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1043a-rdb"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1043a-rdb-sdboot = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1043a-rdb-sdboot"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-frwy = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1046a-frwy"
        ];
      };
      fsl_ls1046a-frwy-sdboot = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1046a-frwy-sdboot"
        ];
      };
      fsl_ls1046a-rdb = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1046a-rdb"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-rdb-sdboot = {
        device_packages = [
          "~layerscape-fman"
          "~trusted-firmware-a-ls1046a-rdb-sdboot"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb = {
        device_packages = [
          "~layerscape-mc"
          "~layerscape-dpl"
          "~trusted-firmware-a-ls1088a-rdb"
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb-sdboot = {
        device_packages = [
          "~layerscape-mc"
          "~layerscape-dpl"
          "~trusted-firmware-a-ls1088a-rdb-sdboot"
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls2088a-rdb = {
        device_packages = [
          "~layerscape-mc"
          "~layerscape-dpl"
          "~trusted-firmware-a-ls2088a-rdb"
          "restool"
          "kmod-ahci-qoriq"
        ];
      };
      fsl_lx2160a-rdb = {
        device_packages = [
          "~layerscape-mc"
          "~layerscape-dpl"
          "~layerscape-ddr-phy"
          "~trusted-firmware-a-lx2160a-rdb"
          "restool"
        ];
      };
      fsl_lx2160a-rdb-sdboot = {
        device_packages = [
          "~layerscape-mc"
          "~layerscape-dpl"
          "~layerscape-ddr-phy"
          "~trusted-firmware-a-lx2160a-rdb-sdboot"
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
  kmods."6.6.93-1-190eb07d6bdd4747a7a23b5e9d2a9b32" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/kmods/6.6.93-1-190eb07d6bdd4747a7a23b5e9d2a9b32/";
    sourceInfo = {
      hash = "sha256-N7OHDSz04NBdtC2OyJXz+SfyMREFKKCQlghp0VcXye8=";
      name = "kmods-layerscape_armv8_64b-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/kmods/6.6.93-1-190eb07d6bdd4747a7a23b5e9d2a9b32/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-GDfJnA8iVScBCzWJ4Ryc6lHnaCw4uYfDB53Hj51xAt4=";
      name = "layerscape_armv8_64b-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/layerscape/armv8_64b/packages/Packages";
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

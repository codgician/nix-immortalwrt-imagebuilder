# 24.10.5 layerscape/armv8_64b
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/";
  sha256sums = {
    hash = "sha256-pxuinDfWA/QVEnEbbdyflU+HG0l3vyWjPklUO8Kgssw=";
    name = "layerscape_armv8_64b-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/sha256sums";
  };
  imagebuilder = {
    sha256 = "aae6358d9c796c2c650d06a1f454a9792ceed657ccf171e7f6574614cc0fae4f";
    filename = "immortalwrt-imagebuilder-24.10.5-layerscape-armv8_64b.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BR4GWJnib9BqTOXsnWnHXUvRGDVgjMV5MI5kDOasLl0=";
    name = "layerscape_armv8_64b-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "80d60e5e25c8b4f01df92769064a3bbe";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-80d60e5e25c8b4f01df92769064a3bbe";
    profiles = {
      fsl_ls1012a-frdm = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-frwy-sdboot = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-ppfe"
        ];
      };
      fsl_ls1012a-rdb = {
        device_packages = [
          "layerscape-ppfe"
          "kmod-hwmon-ina2xx"
          "kmod-iio-fxas21002c-i2c"
          "kmod-iio-fxos8700-i2c"
          "kmod-ppfe"
        ];
      };
      fsl_ls1028a-rdb = {
        device_packages = [
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1028a-rdb-sdboot = {
        device_packages = [
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
          "kmod-rtc-pcf2127"
        ];
      };
      fsl_ls1043a-rdb = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1043a-rdb-sdboot = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-frwy = {
        device_packages = [ ];
      };
      fsl_ls1046a-frwy-sdboot = {
        device_packages = [ ];
      };
      fsl_ls1046a-rdb = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1046a-rdb-sdboot = {
        device_packages = [
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls1088a-rdb-sdboot = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
          "kmod-hwmon-ina2xx"
          "kmod-hwmon-lm90"
        ];
      };
      fsl_ls2088a-rdb = {
        device_packages = [
          "restool"
          "kmod-ahci-qoriq"
        ];
      };
      fsl_lx2160a-rdb = {
        device_packages = [ "restool" ];
      };
      fsl_lx2160a-rdb-sdboot = {
        device_packages = [ "restool" ];
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
  kmods."6.6.122-1-80d60e5e25c8b4f01df92769064a3bbe" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/kmods/6.6.122-1-80d60e5e25c8b4f01df92769064a3bbe/";
    sourceInfo = {
      hash = "sha256-tbAKhy57x7qLcydu6H9AsCCsfx0kLLx6AL1sO/Wh5Nk=";
      name = "kmods-layerscape_armv8_64b-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/kmods/6.6.122-1-80d60e5e25c8b4f01df92769064a3bbe/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/packages/";
    sourceInfo = {
      hash = "sha256-Gv9JsZk2063VieJSJzmk3PvoWm6dpv1cvaULIyXOFWk=";
      name = "layerscape_armv8_64b-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/layerscape/armv8_64b/packages/Packages";
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

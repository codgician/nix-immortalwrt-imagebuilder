# 24.10.5 imx/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-Rec0PagoMmV1/FhhbH7TtMTNUHJm3D4sEP07QRwiDBk=";
    name = "imx_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "72aedcce7dfcb45e5b6be327e6945c7f91468415169431a1380efcdd5078db82";
    filename = "immortalwrt-imagebuilder-24.10.5-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-v5lNIjKyzGFXEgUanX4r0P6o0eIXbLuN8rBJv6i1h9g=";
    name = "imx_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "5ecc8b31b1a5fb3ebc2cec04728712dd";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "blkid"
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-5ecc8b31b1a5fb3ebc2cec04728712dd";
    profiles = {
      gateworks_venice = {
        device_packages = [
          "kmod-hwmon-gsc"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-pps-gpio"
          "kmod-lan743x"
          "kmod-sky2"
          "kmod-iio-st_accel-i2c"
          "kmod-can"
          "kmod-can-flexcan"
          "kmod-can-mcp251x"
        ];
      };
    };
  };
  kmods."6.6.122-1-5ecc8b31b1a5fb3ebc2cec04728712dd" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/kmods/6.6.122-1-5ecc8b31b1a5fb3ebc2cec04728712dd/";
    sourceInfo = {
      hash = "sha256-DDJGGBhUPNGwA7I1bxIWvPvf/GXyvoXajloUF1hx2QE=";
      name = "kmods-imx_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/kmods/6.6.122-1-5ecc8b31b1a5fb3ebc2cec04728712dd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-hsYUy+LS1vIdG21ygZSuUZHzdg75Uc9V9KboO6qOaPs=";
      name = "imx_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/imx/cortexa53/packages/Packages";
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

# 25.12.0-rc2 imx/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/";
  sha256sums = {
    hash = "sha256-r5/3GLBV6le64lZ1CQ1MYrzNi31xe5E8pQjQ0vua7qQ=";
    name = "imx_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "880786864f429caaadaafc503b329934edd6a44dad459059b7e113ca79c73958";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-imx-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-qn+jo5Mw7W8WQWpLL90TY5+AXLz0l5vQbMz+ZYwu+zE=";
    name = "imx_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "3228f9ba6f7891ed782447c31af1deae";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
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
    ];
    kmods_target = "6.12.79-1-3228f9ba6f7891ed782447c31af1deae";
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
  kmods."6.12.79-1-3228f9ba6f7891ed782447c31af1deae" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/kmods/6.12.79-1-3228f9ba6f7891ed782447c31af1deae/";
    sourceInfo = {
      hash = "sha256-uFELdiXStb1OOCaEbjtqOGcA3BQhzN8uNzyQwQNCkSk=";
      name = "kmods-imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/kmods/6.12.79-1-3228f9ba6f7891ed782447c31af1deae/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-ZnR5k9ug4IFNzcwXiWyhznIpxMhh0LHqS3XXxHNTjhg=";
      name = "imx_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/imx/cortexa53/packages/packages.adb";
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

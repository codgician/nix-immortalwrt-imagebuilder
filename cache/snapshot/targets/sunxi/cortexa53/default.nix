# snapshot sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-9rVfjmD645qkgQ27ef9wrB3zGtUSyUzO258yAkdJBqo=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "163dc7e2d21f6dabc9b17574667581a2dc819213c76e2c02b104f262f60ad3e5";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1LpbtB8XFSmJCBpYqRqm5Ckg4niYja835bQR/wQxs3k=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "c14199ba627d6e6d115495bc61fca7b5";
      version = "6.18.37";
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.37-1-c14199ba627d6e6d115495bc61fca7b5";
    profiles = {
      friendlyarm_nanopi-neo-plus2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r1s-h5 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-usb-net-rtl8152"
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_sopine-baseboard = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      radxa_cubie-a5e = {
        device_packages = [
          "kmod-aic8800-sdio"
          "wpad-openssl"
        ];
      };
      xunlong_orangepi-one-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-pc2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero2w = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero3 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.37-1-c14199ba627d6e6d115495bc61fca7b5" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.37-1-c14199ba627d6e6d115495bc61fca7b5/";
    sourceInfo = {
      hash = "sha256-oiI4TjxO1Blyj5D3qpgCTz7L62gWoGXZM6qWWQZFPdQ=";
      name = "kmods-sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/kmods/6.18.37-1-c14199ba627d6e6d115495bc61fca7b5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-prpni4eBmrQT4zjnO0L37hhpakh24dKU9Ul7sRA2qaM=";
      name = "sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/sunxi/cortexa53/packages/packages.adb";
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

# 25.12.0-rc2 sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-fdfDzRbKj44AMvuAab+JoQRhedGcMRzEuX47LKT8ccU=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "b9b8f74aba687bf3b1d7ee0e1521079cf9a90caf1349d9e5a88c36dc8b55fc01";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WdCX1M4K4Q5eyjioPYB7O712YjwrkQ672oZzqkTOo48=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "88deee03dc55ca0c9f980bf423178fb2";
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
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
    kmods_target = "6.12.79-1-88deee03dc55ca0c9f980bf423178fb2";
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
  kmods."6.12.79-1-88deee03dc55ca0c9f980bf423178fb2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/kmods/6.12.79-1-88deee03dc55ca0c9f980bf423178fb2/";
    sourceInfo = {
      hash = "sha256-BGeo8vXve/UVmEB9pq+TlkzOPokZyVfFwmD5iXbuQzA=";
      name = "kmods-sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/kmods/6.12.79-1-88deee03dc55ca0c9f980bf423178fb2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-mhzot55dK7GOycXYcYyMrwIH+8mfy5ebLjhRcHfMzlU=";
      name = "sunxi_cortexa53-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/sunxi/cortexa53/packages/packages.adb";
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

# snapshot sunxi/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-QDqeyBA1VAR/JVXkr8PlkKvaNJXkL214nK4T0U0cIZM=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "c264c323180c388cfbf517041e75a72c98d0c5a4444f5dffbed1cbced89c3bc7";
    filename = "immortalwrt-imagebuilder-sunxi-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-I45rn46gaP5G2DDsGPXKU+WMqRMAPZ9EUUGWFjOyVg4=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "29656b1363cd71826112c8663d610586";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-29656b1363cd71826112c8663d610586";
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
  kmods."6.12.67-1-29656b1363cd71826112c8663d610586" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/kmods/6.12.67-1-29656b1363cd71826112c8663d610586/";
    sourceInfo = {
      hash = "sha256-cQF+bZazoC7PrbHll8hU7ypR9/m2mCz1kYvjy5IjPj8=";
      name = "kmods-sunxi_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/kmods/6.12.67-1-29656b1363cd71826112c8663d610586/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-pspa+MrVBN2trnN57FugEJJApxzXaJiHWpt77YIH1cM=";
      name = "sunxi_cortexa53-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/sunxi/cortexa53/packages/packages.adb";
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

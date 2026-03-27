# 23.05.6 sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-p8XWb0KNI5dxf6U3FVnn4I0PjlwQcM2+pPKqQHaEH9I=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "ca4ff25ac10f74561d4cda91226a8d2e2d4bc1139889e9b01f1464a834e6d287";
    filename = "immortalwrt-imagebuilder-23.05.6-sunxi-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-De+CODL51DOEuEgUlE5EWKvI+oCSq5qM+Dbbikd2K0o=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "baeb12c0b157d65c5641792afff3f9af";
      version = "5.15.189";
    };
    default_packages = [
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-baeb12c0b157d65c5641792afff3f9af";
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
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-4cUXBNzB9iaFuP/DCpYOL+vpPpoMQGfC/kLzkqADV8Y=";
      name = "sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/sunxi/cortexa53/packages/Packages";
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

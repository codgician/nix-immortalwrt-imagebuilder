# 25.12.0-rc2 bcm4908/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/";
  sha256sums = {
    hash = "sha256-VD1nfJmjgsUitfgq4T6r75O3dIDaCT4NMijJ/qqvbR4=";
    name = "bcm4908_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a3e539f8bafd9619a6938564854333cc2fc403eb405c2d87a5cfa1548e112926";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm4908-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7xp01YPeUj97dcDo0U7NtkgrJsK+wXC0CdkabjSPIaE=";
    name = "bcm4908_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "e254d9c521ee501cb54143a2f3d18eee";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "bcm4908img"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdt-utils"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.79-1-e254d9c521ee501cb54143a2f3d18eee";
    profiles = {
      asus_gt-ac5300 = {
        device_packages = [ ];
      };
      netgear_r8000p = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-e254d9c521ee501cb54143a2f3d18eee" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/kmods/6.12.79-1-e254d9c521ee501cb54143a2f3d18eee/";
    sourceInfo = {
      hash = "sha256-WKzE7P4Poe81lfW8qAF5UOycbKWXxYAXRO5uh/m7/hs=";
      name = "kmods-bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/kmods/6.12.79-1-e254d9c521ee501cb54143a2f3d18eee/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/packages/";
    sourceInfo = {
      hash = "sha256-2gKG/dWLdXlpCLLN4Gr51mCzMVTPo2pFE/ykyFcytN0=";
      name = "bcm4908_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm4908/generic/packages/packages.adb";
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

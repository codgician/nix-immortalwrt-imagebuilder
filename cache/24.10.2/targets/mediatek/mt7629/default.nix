# 24.10.2 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-+6XMuuLUKaFb9BtQvRRzgqqCLwTLd9bHiTKp6ydqJno=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "bfbb74c2806f9d265ce8aab096a3992ea4bad408921ac357cdd761c6771347f2";
    filename = "immortalwrt-imagebuilder-24.10.2-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LrNrBWNUD5c7WgHDyvotKl0eahhGGIw0RQkfLIjIK5k=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "fb0b6e7dc559426cbea3d0f97cd1f4ef";
      version = "6.6.93";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.93-1-fb0b6e7dc559426cbea3d0f97cd1f4ef";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      linksys_ea7500-v3 = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.93-1-fb0b6e7dc559426cbea3d0f97cd1f4ef" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/kmods/6.6.93-1-fb0b6e7dc559426cbea3d0f97cd1f4ef/";
    sourceInfo = {
      hash = "sha256-q3wyXuH1ExLJMAfZiqI2AkYnWChoQpK3c6y3bUvu3UM=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/kmods/6.6.93-1-fb0b6e7dc559426cbea3d0f97cd1f4ef/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-dTnM5F0XsaX4QMJ07u7LOrsFI0fZgFw9mL1v2S1e8Aw=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}

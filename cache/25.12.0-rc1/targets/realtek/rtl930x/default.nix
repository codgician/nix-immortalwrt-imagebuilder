# 25.12.0-rc1 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-L8L+W6C+faRdpvNgby9lEa4ZajJxBz4QuyzUI6yvaCI=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "887de55ff36e78cc51e510365d7b01a5ab34f0ca8130462af2693dabc889b22c";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-WEFpUA3K2o9YxdDI1X4dofIudu9KKTrbtHbCsr1FjiM=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2232c2f3e72ac6acd8c2d5a0af15cf0f";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-2232c2f3e72ac6acd8c2d5a0af15cf0f";
    profiles = {
      hasivo_s1100w-8xgt-se = {
        device_packages = [ ];
      };
      plasmacloud_mcx3 = {
        device_packages = [ "poemgr" ];
      };
      plasmacloud_psx10 = {
        device_packages = [ "poemgr" ];
      };
      plasmacloud_psx8 = {
        device_packages = [ "poemgr" ];
      };
      tplink_tl-st1008f-v2 = {
        device_packages = [ "kmod-gpio-pca953x" ];
      };
      vimin_vm-s100-0800ms = {
        device_packages = [ ];
      };
      xikestor_sks8300-8x = {
        device_packages = [ ];
      };
      xikestor_sks8310-8x = {
        device_packages = [ ];
      };
      zyxel_xgs1010-12-a1 = {
        device_packages = [ ];
      };
      zyxel_xgs1210-12-a1 = {
        device_packages = [ ];
      };
      zyxel_xgs1210-12-b1 = {
        device_packages = [ ];
      };
      zyxel_xgs1250-12-a1 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
      zyxel_xgs1250-12-b1 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.12.74-1-2232c2f3e72ac6acd8c2d5a0af15cf0f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/kmods/6.12.74-1-2232c2f3e72ac6acd8c2d5a0af15cf0f/";
    sourceInfo = {
      hash = "sha256-TeaZMZPwlcd4G4Bm1byzsZlfnjx5UdYRl9OB92gXOtc=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/kmods/6.12.74-1-2232c2f3e72ac6acd8c2d5a0af15cf0f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-5cOhJv61G02LYo7w6NY4fN3/XbHI6AiZdL8sV8QBZrU=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl930x/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}

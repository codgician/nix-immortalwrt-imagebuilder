# 25.12.2 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-yw6gIiclSIsd6mJ7Jgy/bM+kFwLJF6I9Qujn3uGCBzI=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "f118afa22f87fb749ea19254eedc3e6c7797b6ba7a7bd2adcc4ac3fbf87d7063";
    filename = "immortalwrt-imagebuilder-25.12.2-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-o1WZHmwhcCDR7rTiso1lrdFI6R8rxtO0ceYfMFRNvAY=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "5974165323247118f7f9a844509da7cc";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-5974165323247118f7f9a844509da7cc";
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
  kmods."6.12.103-1-5974165323247118f7f9a844509da7cc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/kmods/6.12.103-1-5974165323247118f7f9a844509da7cc/";
    sourceInfo = {
      hash = "sha256-b79ux0FeBMmoP1xeG/1of/Xmj/kjkvhduvezCRm84Qc=";
      name = "kmods-realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/kmods/6.12.103-1-5974165323247118f7f9a844509da7cc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-I4yOpn7zLvzupJUWGQna+1x9zIrcSxQU8uAD0R+Ns6s=";
      name = "realtek_rtl930x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x/packages/packages.adb";
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

# 24.10.3 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-+xy6oQyTKWWOBK/0V7UY/8pQJXVIaZoxcp6h4+zaZv4=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "2474fe48647c97c3cb9a63065a4dbad63bb23de921067a1742434dd0ab87eec9";
    filename = "immortalwrt-imagebuilder-24.10.3-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HRNOv2CWaJ+f7WVH5W1Xatc68vVoEdmgkmqcWcnhP2c=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7f02f7c60b19747b6ab7a1e2cd17f845";
      version = "6.6.104";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
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
      "odhcp6c"
      "opkg"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-7f02f7c60b19747b6ab7a1e2cd17f845";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.104-1-7f02f7c60b19747b6ab7a1e2cd17f845" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/kmods/6.6.104-1-7f02f7c60b19747b6ab7a1e2cd17f845/";
    sourceInfo = {
      hash = "sha256-i+fP8EStDtchiCjzg4Fv+Xp3mBUFLepc6rm04tnqyLs=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/kmods/6.6.104-1-7f02f7c60b19747b6ab7a1e2cd17f845/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-AfWXJce1wWZsS04BNVXDnfMHX/2+yqTjDxZ1ZWAM+Js=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/realtek/rtl930x/packages/Packages";
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

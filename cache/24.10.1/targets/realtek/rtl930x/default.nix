# 24.10.1 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-YzEgA8ZNUkiz4nXqhECrw8iJPEeSCALoj8IF/whjE2Q=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "917a6730a8c3f04beca7dc443c71d42d9713a9731b67734e08eaf9ee54886896";
    filename = "immortalwrt-imagebuilder-24.10.1-realtek-rtl930x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rFRh2sZ3tMRFPWAOxz8IkgFwCgS54jGdqg5EMC/Lg+4=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "7b3a156765283542a7bf6ee59cf8a410";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-7b3a156765283542a7bf6ee59cf8a410";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-thermal"
        ];
      };
    };
  };
  kmods."6.6.86-1-7b3a156765283542a7bf6ee59cf8a410" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/kmods/6.6.86-1-7b3a156765283542a7bf6ee59cf8a410/";
    sourceInfo = {
      hash = "sha256-kvraHTWsflJAxZjpif4byNa/Y/E/Kq2mvG1egiC8u0c=";
      name = "kmods-realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/kmods/6.6.86-1-7b3a156765283542a7bf6ee59cf8a410/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-20kFjJPC5BbY+2vF6CUdzdyJ6YuE08Kgr/GFwPS3vgw=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/realtek/rtl930x/packages/Packages";
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

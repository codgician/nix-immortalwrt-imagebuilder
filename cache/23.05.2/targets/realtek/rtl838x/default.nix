# 23.05.2 realtek/rtl838x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/realtek/rtl838x/";
  sha256sums = {
    hash = "sha256-4JTeOeQNTOxaKcs0lwLK1KO2pHQKOPlUD28r47ls1aw=";
    name = "realtek_rtl838x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/realtek/rtl838x/sha256sums";
  };
  imagebuilder = {
    sha256 = "63d43175ba7e05afb6f2d51d98b41493c6e8bea69d419306e0b768d57ad7aad8";
    filename = "immortalwrt-imagebuilder-23.05.2-realtek-rtl838x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-c55nIcXCatR1LBx4sWDRdm2M4rwHV/Etr1CIramAzpU=";
    name = "realtek_rtl838x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/realtek/rtl838x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_4kec";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ip-bridge"
      "ip-full"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "opkg"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "tc-bpf"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      allnet_all-sg8208m = {
        device_packages = [ ];
      };
      apresia_aplgs120gtss = {
        device_packages = [ ];
      };
      d-link_dgs-1210-10mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      d-link_dgs-1210-10p = {
        device_packages = [ "lua-rs232" ];
      };
      d-link_dgs-1210-16 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-20 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28 = {
        device_packages = [ ];
      };
      d-link_dgs-1210-28mp-f = {
        device_packages = [ "realtek-poe" ];
      };
      engenius_ews2910p = {
        device_packages = [ ];
      };
      hpe_1920-16g = {
        device_packages = [ ];
      };
      hpe_1920-24g = {
        device_packages = [ ];
      };
      hpe_1920-8g = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-180w = {
        device_packages = [ ];
      };
      hpe_1920-8g-poe-65w = {
        device_packages = [ "realtek-poe" ];
      };
      inaba_aml2-17gp = {
        device_packages = [ ];
      };
      iodata_bsh-g24mb = {
        device_packages = [ ];
      };
      netgear_gs108t-v3 = {
        device_packages = [ ];
      };
      netgear_gs110tpp-v1 = {
        device_packages = [ ];
      };
      netgear_gs308t-v1 = {
        device_packages = [ ];
      };
      netgear_gs310tp-v1 = {
        device_packages = [ "lua-rs232" ];
      };
      panasonic_m16eg-pn28160k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m24eg-pn28240k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      panasonic_m8eg-pn28080k = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      tplink_sg2008p-v1 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      tplink_sg2210p-v3 = {
        device_packages = [ "kmod-hwmon-tps23861" ];
      };
      zyxel_gs1900-10hp = {
        device_packages = [ ];
      };
      zyxel_gs1900-16 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24e = {
        device_packages = [ ];
      };
      zyxel_gs1900-24hp-v1 = {
        device_packages = [ ];
      };
      zyxel_gs1900-24hp-v2 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8 = {
        device_packages = [ ];
      };
      zyxel_gs1900-8hp-v1 = {
        device_packages = [ "lua-rs232" ];
      };
      zyxel_gs1900-8hp-v2 = {
        device_packages = [ "lua-rs232" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/realtek/rtl838x/packages/";
    sourceInfo = {
      hash = "sha256-fWj73DcN9zwAQsKEClxjdufPlpXaJdSCGIFkf7cKD4s=";
      name = "realtek_rtl838x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/realtek/rtl838x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_4kec";
  feeds = import ./../../../packages/mips_4kec.nix;
}

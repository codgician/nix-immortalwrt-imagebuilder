# 21.02.7 archs38/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/archs38/generic/";
  sha256sums = {
    hash = "sha256-WBTOAnwAUIue2e2HZbap9cyc7gyhbREf8besYhumpiw=";
    name = "archs38_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/archs38/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "24204a6a1da8713e50f955c3a68d462337222fa43eefcc23a1af497a781fe5b7";
    filename = "immortalwrt-imagebuilder-21.02.7-archs38-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-FYZRe/NZQb0j+U03NC8ciFktbc10vcBcHa/pTimnsms=";
    name = "archs38_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/archs38/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arc_archs";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "fstools"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      nsim_hs = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/archs38/generic/packages/";
    sourceInfo = {
      hash = "sha256-gydhikIg530i5HzEsU6XxA73C6YFY6X/gdVv4LIJLRs=";
      name = "archs38_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/archs38/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arc_archs";
  feeds = import ./../../../packages/arc_archs.nix;
}

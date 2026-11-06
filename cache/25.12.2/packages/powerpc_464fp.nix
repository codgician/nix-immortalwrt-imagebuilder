# 25.12.2 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-QkwU8f32wAypE0R/Vcgqcid76/RxE3/StcdvcdHoKbw=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-xa5FfmKOTp9U9zPmFmB1dgWjAY5B3qElQXvXsf/GlWM=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-8PsIl7kGCXV9bCpL1oxBh2rpeXwxHI8KWX98rrPzKjg=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-2gobz0yyfhfddGSI+nDXRrCshiTrOV9SAylI+iyrz50=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-KpqN8FqlieDUzyZygQChQ1+BoC3GwAEgsy0Q+VQPRK8=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-vryn+DhOtOhxH0O2dk9FC6KMhyseOONhvVN58GU2Vws=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}

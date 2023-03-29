{
  lib,
  fetchurl,
  stdenv,
  undmg,
}:
stdenv.mkDerivation rec {
  pname = "vivaldi";
  version = "5.7.2921.65";

  src = fetchurl {
    url = "https://downloads.vivaldi.com/stable/Vivaldi.${version}.universal.dmg";
    hash = "sha256-wlMiuzYPq0PIY3wJpyVxkqHWPMlnwKmS1v5vV5vbUG8=";
  };

  nativeBuildInputs = [undmg];

  sourceRoot = "Vivaldi.app";

  installPhase = ''
    mkdir -p $out/Applications/Vivaldi.app
    cp -R . $out/Applications/Vivaldi.app
  '';

  meta = with lib; {
    description = "A Browser for our Friends, powerful and personal";
    homepage = "https://vivaldi.com";
    license = licenses.unfree;
    platforms = platforms.darwin;
    maintainers = with maintainers; [natsukium];
  };
}

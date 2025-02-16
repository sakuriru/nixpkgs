{ lib
, rustPlatform
, fetchFromGitHub
}:

rustPlatform.buildRustPackage rec {
  pname = "steamguard-cli";
  version = "0.12.0";

  src = fetchFromGitHub {
    owner = "dyc3";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-WCEMZTi9/EI8JaUM5w2xJkx0x3DoaByORgVqw1TPcgI=";
  };

  cargoHash = "sha256-FVjL0tFndJNsL5oZSSqBvMtCEPqzf5xZGd8NaV5nmr4=";

  meta = with lib; {
    changelog = "https://github.com/dyc3/steamguard-cli/releases/tag/v${version}";
    description = "A linux utility for generating 2FA codes for Steam and managing Steam trade confirmations.";
    homepage = "https://github.com/dyc3/steamguard-cli";
    license = with licenses; [ gpl3Only ];
    mainProgram = "steamguard";
    maintainers = with maintainers; [ surfaceflinger ];
    platforms = platforms.linux;
  };
}

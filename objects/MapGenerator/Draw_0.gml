// This switch statement essentially acts as the state machine
switch (generation_state) {
	case generation.base: scrGenerateBase(); break;
	case generation.ground: scrGenerateGround(); break;
	case generation.gen_ca: scrGenerateCA(); break;
	case generation.gen_erosion: scrGenerateErosion(); break;
	case generation.erosion: scrDrawErosion(); break;
	case generation.rivers: scrGenerateRivers(); break;
	case generation.mountains: scrGenerateMountains(); break;
	case generation.forests: scrGenerateForests(); break;
	case generation.deserts: scrGenerateDeserts(); break;
	case generation.beaches: scrGenerateBeaches(); break;
	case generation.ca: scrDrawCA(); break;
	case generation.tiles: scrDrawTiles(); break;
	case generation.nothing: break;
}



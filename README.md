render-man
==========

Assignment 2 Graphics CS 775

110050012 - Mayank Meghwanshi
110050041 - Shivam H Prasad


Part1:
	raytrace.rib - Scene Description file similar to assignment 1 Raytraced Scene
	raytrace.tiff - Final Image
	shadowlight.sl - Point light with transmission() to check for shadow areas
	specular.sl - Surface shader to implement specular surface similar to what we did in raytracer assignment 1

	Instructions:
		shader *sl
		prman raytrace.rib

Part2:
	colorbleed.rib - Scene Description with colorbleeding
	colorbleed.tiff - Final image with colorbleeding
	diffuse.sl - Surface shader to implement diffused surface with indirect diffuse color
	nocolorbleed.rib - Scene Description without colorbleeding
	nocolorbleed.tiff - Final image without colorbleeding
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman colorbleed.rib # for colorbleed
		prman nocolorbleed.rib # for nocolorbleed


Part2b:
	colorbleed.rib - Scene Description for point cloud generation
	bake_radiosity.sl - Shader to make point cloud data
	colorbleed_ptc.tiff - Image generated with point cloud
	bake_colorbleed.rib - Scene Description file to use baked radiosity point cloud data
	colorbleed.tiff - Final Image with colorbleed
	pointbasedcolorbleeding.sl - Shader to use point cloud data on surface
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman colorbleed.rib
		prman bake_colorbleed.rib

Part3:
	causticmap.rib - Scene Description to generate photon map
	caustic.rib - Scene description to use photon map to generate caustics
	caustic.tiff - Final Image with caustic.
	no_caustic.tiff - Final image without caustic
	diffuse.sl
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman causticmap.rib
		prman caustic.rib

Part3b:
	causticmap.rib - Photon map generator
	caustic.rib - File to generate point clouds
	bake_caustic.rib - Scene Description file to use baked radiosity point cloud data
	bake_caustic.tiff - Final image with caustic
	caustic_ptc.tiff - Image generated with point cloud
	bake_radiosity.sl
	pointbasedcolorbleeding.sl
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman causticmap.rib
		prman caustic.rib
		prman bake_caustic.rib

Part4:
	arealightmap.rib - Photon map generator for arealights with caustics
	arealight.rib - Scene description with arealights
	arealight.tiff - Final image with arealights and caustics

	Instructions:
		prman arealightmap.rib
		prman arealight.rib

Part4b:
	arealightmap.rib - Photon map generator for arealights with caustics
	arealight.rib - Scene Description file for radiosity data of area lights as diffused objects
	arealight_ptc.tiff - Image generated with arealight.rib point cloud
	areaobjects.rib - Scene Description file for radiosity data of other diffused objects
	areaobject_ptc.tiff - Image generated with areaobjects.rib point cloud
	bake_arealight.rib - Scene description file for using merged point cloud data and photon map
	arealight.tiff - Final Image generated with all the three effects
	bake_radiosity.sl
	pointbasedcolorbleeding.sl
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman arealightmap.rib
		prman arealight.rib
		prman areaobjects.rib
		ptmerge arealight.ptc areaobject.ptc merged.ptc
		prman bake_arealight.rib

part5:
	arealight.rib - Scene description with textures in arealight.rib
	arealightmap.rib
	textures - directory for textures
	texture.tiff - Final Image with textures

	Instructions:
		prman arealightmap.rib
		prman arealight.rib

part5b:
	bake_arealight.rib - Scene description with textures in bake_arealight.rib
	texture.tiff - Final image with textures
	textures - directory for textures
	arealightmap.rib
	arealight.rib
	areaobjects.rib
	bake_radiosity.sl
	pointbasedcolorbleeding.sl
	shadowlight.sl
	specular.sl

	Instructions:
		shader *sl
		prman arealightmap.rib
		prman arealight.rib
		prman areaobjects.rib
		ptmerge arealight.ptc areaobject.ptc merged.ptc
		prman bake_arealight.rib

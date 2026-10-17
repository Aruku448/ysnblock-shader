#if !defined YSN_UNIFORMS_GLSL
#define YSN_UNIFORMS_GLSL

#if defined TERRAIN_GBUFFER && defined VERTEX_STAGE
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform mat4 textureMatrix;
uniform vec3 chunkOffset;
#endif

#if defined TERRAIN_GBUFFER && defined FRAGMENT_STAGE
uniform sampler2D gtexture;
#endif

#endif

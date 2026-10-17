#if !defined YSN_ATTRIBUTES_GLSL
#define YSN_ATTRIBUTES_GLSL

#if defined TERRAIN_GBUFFER && defined VERTEX_STAGE
in vec3 vaPosition;
in vec2 vaUV0;
in vec4 vaColor;
#endif

#endif

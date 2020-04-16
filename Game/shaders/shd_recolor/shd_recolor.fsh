//
// Recolors gray pixels into a new color
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 modColor;

void main()
{
	vec4 originalColor = texture2D( gm_BaseTexture, v_vTexcoord );

	if ((originalColor.r == originalColor.g) && (originalColor.g==originalColor.b))
	{
		originalColor = originalColor * modColor;//vec4(outR, outG, outB, 1.0);	
	}


	gl_FragColor = originalColor;
	
}

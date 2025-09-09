// Variables //
float2 resolution = 1;
float2 size = 1;
float4 fill_color = 0;
float4 border_color = 0;
float border_radius = 0.0;
float border_width = 0.0;
float2 gradient_dir = float2(1.0, 0.0);   
float gradient_flip = 0.0;               
float2 gradient_alpha = float2(1.0, 1.0); 
float2 gradient_range = float2(0.0, 1.0); 

// Inputs //
struct PSInput { 
    float4 Position : POSITION0; 
    float2 TexCoord : TEXCOORD0; 
};

// Utils //
float RectSDF(float2 p, float2 b, float r) {
    float2 d = abs(p) - b + r;
    return min(max(d.x, d.y), 0.0) + length(max(d, 0.0)) - r;
}

// Handlers //
float4 PSHandler(PSInput IN) : COLOR0 {
    IN.TexCoord *= resolution;
    float2 uv = saturate((IN.TexCoord - 0.5*(resolution - size)) / max(size, float2(1e-5,1e-5)));
    float t = lerp(uv.y, uv.x, step(0.5, abs(gradient_dir.x)));
    t = lerp(t, 1.0 - t, step(0.5, gradient_flip));
    float sdf = RectSDF(IN.TexCoord - 0.5*resolution, size*0.5 - border_width, border_radius - border_width);
    float4 outc = lerp(border_color, fill_color * step(sdf, 0.0), smoothstep(-1.0, 1.0, abs(sdf) - border_width));
    outc.a *= lerp(gradient_alpha.x, gradient_alpha.y, saturate((t - min(gradient_range.x, gradient_range.y)) / max(abs(gradient_range.y - gradient_range.x), 1e-5)));
    return outc;
}

// Techniques //
technique Shader_Rectangle {
    pass P0 {
        SrcBlendAlpha = One;
        DestBlendAlpha = InvSrcAlpha;
        SeparateAlphaBlendEnable = true;
        PixelShader = compile ps_2_0 PSHandler();
    }
}
technique fallback {
    pass P0 {}
}

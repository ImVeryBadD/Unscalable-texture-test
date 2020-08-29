sampler2D inputSampler : register(S0);
sampler2D Texture : register(S1);

/// <defaultValue>Green</defaultValue>
float4 ColorKey : register(C0);

/// <minValue>0</minValue>
/// <maxValue>1</maxValue>
/// <defaultValue>0.2</defaultValue>
float Tolerance : register(C1);

/// <defaultValue>4,4</defaultValue>
float2 TextureDim : register(C2);

float4 main(float2 xy : VPOS, float2 uv : TEXCOORD) : COLOR
{
  float4 color = tex2D( inputSampler, uv );
  if (all(abs(color.rgb - ColorKey.rgb) < Tolerance)) {
   int tempX=xy.x%TextureDim[0];
   int tempY=xy.y%TextureDim[1];
    
   float resX=(1/TextureDim[0]/2+tempX*1/TextureDim[0]);
   float resY=(1/TextureDim[1]/2+tempY*1/TextureDim[1]);
    
   float4 myPixelColor = tex2D(Texture, float2(resX, resY));
   return myPixelColor;
  }
  return color;
}

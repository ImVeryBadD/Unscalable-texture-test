using System;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Effects;

namespace NETFramework
{
	public class chromaKeyTextureEffect : ShaderEffect
	{
		public DependencyProperty InputProperty = ShaderEffect.RegisterPixelShaderSamplerProperty("Input", typeof(chromaKeyTextureEffect), 0);
		public DependencyProperty TextureProperty = ShaderEffect.RegisterPixelShaderSamplerProperty("Texture", typeof(chromaKeyTextureEffect), 1);
		public DependencyProperty ColorKeyProperty = DependencyProperty.Register("ColorKey", typeof(Color), typeof(chromaKeyTextureEffect), new UIPropertyMetadata(Color.FromArgb(255, 0, 128, 0), PixelShaderConstantCallback(0)));
		public DependencyProperty ToleranceProperty = DependencyProperty.Register("Tolerance", typeof(double), typeof(chromaKeyTextureEffect), new UIPropertyMetadata(((double)(0.25D)), PixelShaderConstantCallback(1)));
		public DependencyProperty TextureDimProperty = DependencyProperty.Register("TextureDim", typeof(Point), typeof(chromaKeyTextureEffect), new UIPropertyMetadata(new Point(4D, 4D), PixelShaderConstantCallback(2)));
		public chromaKeyTextureEffect()
		{
			PixelShader pixelShader = new PixelShader();
			pixelShader.UriSource = new Uri("pack://application:,,,/chromaKeyTexture.ps");
			this.PixelShader = pixelShader;

			this.UpdateShaderValue(InputProperty);
			this.UpdateShaderValue(TextureProperty);
			this.UpdateShaderValue(ColorKeyProperty);
			this.UpdateShaderValue(ToleranceProperty);
			this.UpdateShaderValue(TextureDimProperty);
		}
		public Brush Input
		{
			get
			{
				return ((Brush)(this.GetValue(InputProperty)));
			}
			set
			{
				this.SetValue(InputProperty, value);
			}
		}
		public Brush Texture
		{
			get
			{
				return ((Brush)(this.GetValue(TextureProperty)));
			}
			set
			{
				this.SetValue(TextureProperty, value);
			}
		}
		public Color ColorKey
		{
			get
			{
				return ((Color)(this.GetValue(ColorKeyProperty)));
			}
			set
			{
				this.SetValue(ColorKeyProperty, value);
			}
		}
		public double Tolerance
		{
			get
			{
				return ((double)(this.GetValue(ToleranceProperty)));
			}
			set
			{
				this.SetValue(ToleranceProperty, value);
			}
		}
		public Point TextureDim
		{
			get
			{
				return ((Point)(this.GetValue(TextureDimProperty)));
			}
			set
			{
				this.SetValue(TextureDimProperty, value);
			}
		}
	}
}
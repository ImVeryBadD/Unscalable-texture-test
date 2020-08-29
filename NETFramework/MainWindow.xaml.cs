using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace NETFramework
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            EllipseChromaKey.TextureDim = new Point((TextureImage.ImageSource as BitmapSource).PixelWidth, (TextureImage.ImageSource as BitmapSource).PixelHeight);
        }

        private void TransitionSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            Ellipse.Height = Canvas.Height = e.NewValue;
            Ellipse.Width = Canvas.Width = e.NewValue * 2;
            this.Title = "Source: " + Ellipse.Width.ToString() + "x" + Ellipse.Height.ToString() + "  Tolerance: " + EllipseChromaKey.Tolerance + "  Texture: " + (TextureImage.ImageSource as BitmapSource).PixelWidth + "x" + (TextureImage.ImageSource as BitmapSource).PixelHeight;
        }
        private void ToleranceSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            EllipseChromaKey.Tolerance = e.NewValue;
            this.Title = "Source: " + Ellipse.Width.ToString() + "x" + Ellipse.Height.ToString() + "  Tolerance: " + EllipseChromaKey.Tolerance + "  Texture: " + (TextureImage.ImageSource as BitmapSource).PixelWidth + "x" + (TextureImage.ImageSource as BitmapSource).PixelHeight;
        }
    }
}

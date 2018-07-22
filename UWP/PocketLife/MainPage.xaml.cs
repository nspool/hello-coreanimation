using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Media.Animation;
using Windows.UI.Xaml.Navigation;
using Windows.UI.Xaml.Shapes;

// The Blank Page item template is documented at https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace PocketLife
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        DoubleAnimation fadeIn = new DoubleAnimation() { From = 0.0, To = 1.0, Duration=TimeSpan.FromSeconds(5) };

        Storyboard storyboard = new Storyboard();

        public MainPage()
        {
            this.InitializeComponent();

            storyboard.Children.Add(fadeIn);

            Storyboard.SetTarget(fadeIn, alert);
            Storyboard.SetTargetProperty(fadeIn, "Opacity");

            alert.Loaded += new RoutedEventHandler(alertLoaded);

        }

        private void alertLoaded(object sender, RoutedEventArgs e)
        {
            storyboard.Begin();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            storyboard.Stop();
            storyboard.Children.Clear();
            alertAnimation.Source = new Uri(@"ms-resource:///Files/Assets\Mind.avi");
            alertAnimation.IsLooping = false;

        }
    }
}

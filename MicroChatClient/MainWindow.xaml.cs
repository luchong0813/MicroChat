using Microsoft.AspNetCore.SignalR.Client;
using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace MicroChatClient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        HubConnection connection;
        private string lastTime;
        private int lastMin;

        public MainWindow()
        {
            InitializeComponent();

            connection = new HubConnectionBuilder()
                .WithUrl("http://47.115.23.69:8081/ChatHub")
                //.WithUrl("https://loclhost:44359/ChatHub")  
                .Build();



            connection.On<string>("online", (msg) =>
            {
                lbx_Messages.Dispatcher.Invoke(() =>
                {
                    Bubble bubble = new Bubble(msg);
                    lbx_Inform.Children.Add(bubble);
                });
            });

            connection.On<string, string>("ReceiveMessage", (user, msg) =>
            {
                lbx_Messages.Dispatcher.Invoke(() =>
                {
                    Bubble bubble = new Bubble(user, msg, false);
                    lbx_Messages.Children.Add(bubble);
                });
            });

            connection.On<string>("ReceiveSystemMessage", (msg) =>
            {
                lbx_Messages.Dispatcher.Invoke(() =>
                {
                    Bubble bubble = new Bubble(msg, false);
                    lbx_Messages.Children.Add(bubble);
                });
            });

            
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            Rect r = new Rect(e.NewSize);
            RectangleGeometry gm = new RectangleGeometry(r, 3, 3); // 40 is radius here
            ((UIElement)sender).Clip = gm;
        }

        private void Btn_SendMessage(object sender, RoutedEventArgs e)
        {
            if (Disconnect.Content.ToString() == "连接") return;
            if (txtMessage.Text == "") return;
            Time();
            connection.InvokeAsync("SendMessage", txt_name.Text, txtMessage.Text);
            txtMessage.Text = "";
        }

        private void Btn_Disconnect(object sender, RoutedEventArgs e)
        {

            if (Disconnect.Content.ToString() == "连接")
            {
                connection.StartAsync();
                connection.InvokeAsync("Login", txt_name.Text);
                Disconnect.Content = "断开";
                StateIcon.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#09F175"));
                txt_name.IsEnabled = false;
                State.Text = "我在线上";
                Btn_Send.IsEnabled = true;
            }
            else if (Disconnect.Content.ToString() == "断开")
            {
                connection.InvokeAsync("SigOut", txt_name.Text);
                Disconnect.Content = "连接";
                StateIcon.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#ADADAD"));
                txt_name.IsEnabled = true;
                State.Text = "离线";
                Btn_Send.IsEnabled = false;
                connection.StopAsync();
            }
        }

        private void Time()
        {
            string now = $"{DateTime.Now.Hour}:{DateTime.Now.Minute}";
            if (DateTime.Now.Minute < 10)
            {
                now = $"{DateTime.Now.Hour}:0{DateTime.Now.Minute}";
            }
            if (!now.Equals(lastTime))
            {
                if (DateTime.Now.Minute - lastMin >= 1)
                {
                    Label time = new Label()
                    {
                        Content = now,
                        HorizontalAlignment = HorizontalAlignment.Center
                    };
                    lbx_Messages.Children.Add(time);
                    lastTime = now;
                    lastMin = DateTime.Now.Minute;
                }
            }
        }

        private void txtMessage_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                Btn_SendMessage(sender, e);
            }
        }

        private void TextBlock_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            connection.InvokeAsync("SigOut", txt_name.Text);
            connection.StopAsync();
            Close();
        }

        private void TextBlock_MouseLeftButtonDown_1(object sender, MouseButtonEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            txt_name.Text = $"MicroChat{new Random().Next(1, 99)}";
            
        }


        //public static string GetIPFromHtml()
        //{
        //    string pageHtml = string.Empty;
        //    using (WebClient MyWebClient = new WebClient())
        //    {
        //        Encoding encode = Encoding.GetEncoding("utf-8");
        //        MyWebClient.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36");
        //        MyWebClient.Credentials = CredentialCache.DefaultCredentials;//获取或设置用于向Internet资源的请求进行身份验证的网络凭据
        //        Byte[] pageData = MyWebClient.DownloadData("https://www.ip.cn"); //从指定网站下载数据
        //        pageHtml = encode.GetString(pageData);
        //    }
        //    string reg = @"(?:(?:(25[0-5])|(2[0-4]\d)|((1\d{2})|([1-9]?\d)))\.){3}(?:(25[0-5])|(2[0-4]\d)|((1\d{2})|([1-9]?\d)))";
        //    string ip = "";
        //    Match m = Regex.Match(pageHtml, reg);
        //    if (m.Success)
        //    {
        //        ip = m.Value;
        //    }
        //    return ip;
        //}

    }
}


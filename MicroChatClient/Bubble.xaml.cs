using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MicroChatClient
{
    /// <summary>
    /// Bubble.xaml 的交互逻辑
    /// </summary>
    public partial class Bubble : UserControl
    {
        public new string Content;
        public bool IsSendByMe;
        public Bubble()
        {
            InitializeComponent();
            Text.Text = Content;
            if (IsSendByMe)
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Right;
            }
            else
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Left;
            }
        }

        public Bubble(string user, string content, bool isSendByMe)
        {
            InitializeComponent();
            Text.Text = $"{user}：{content}";
            if (isSendByMe)
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Right;
            }
            else
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Left;
            }
        }

        public Bubble(string content, bool isSendByMe)
        {
            InitializeComponent();
            Text.Text = content;
            Docker.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#434A54"));
            Text.Foreground = new SolidColorBrush(Colors.White);

            if (isSendByMe)
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Right;
            }
            else
            {
                Docker.HorizontalAlignment = HorizontalAlignment.Left;
            }
        }

        public Bubble(string content)
        {
            InitializeComponent();
            Text.Text = content;
            Docker.HorizontalAlignment = HorizontalAlignment.Left;
            Docker.Background = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#656D78"));
            Text.Foreground = new SolidColorBrush(Colors.White);
        }
    }
}

   M S B A M L   `   `   `  ���� J  FMicroChatClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:MicroChatClientMicroChatClient       MicroChatClient.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  )localclr-namespace:MicroChatClient  -     � Title$  
MainWindow��$	��500��$	��750�� � WindowStyle$
 None=� � AllowsTransparency$
 True�� � Icon$ 20160413051019500.png��.���  � RowDefinitions �� $��1* ��� $
��2.5* ��� $	��10* �.+��  � ColumnDefinitions �� �� .+��� $��	MicroChat��$
��Left=�$��Center=�$��15 0 0 0q�$
��Bold"�$��20(��� $��1�� �� Orientation$ 
Horizontal=�$��Right=�$��Center=�.+��� $	����$��ReSource/#iconfont)�$��Right=�$��18(��� -   $	����$��ReSource/#iconfont)�$��Right=�$��	15 0 15 0q�$��15(�� $��1�� �� $
��0.9* ��� $
��4.1* ��� $��2* �.+�� $��15 0 0 0q�.+��� -   $��	StateIcon�����#ADADAD �� CornerRadius$ 15��$��15��$��15�� K� ZIndex$ 1��$��
50 50 10 0q��� $ ��/ReSource/headportrait.png��$��70��$��70��$
��Left=�$
��Fill=��� $��1��$ Vertical=�$��Center=�$
��Left=�.+��� -   	 ��Name$	 txt_name��$��chong.lu��$��18(�$��Medium"�$	��120���� -   $��State��$��离线��$��16(�$��0 5 0 0q����#ADADAD�� $��2��$��Center=�.+��� -   
 ��Name$
 
Disconnect��   MaterialDesignRaisedButton#��[  $	��100��$��连接��� $��2�� �� $��7* ��� $��3* �.+�#  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�$��1��$��0��$��5 5 0 5q�$��
15 0 15 10q�.���� .���� -   $��
lbx_Inform���  �� $��7* ��� .+�  $ Depth1=�$��0��$��0��$��
15 10 0 10q�$��	15 0 0 10q�.���� .���� -   $��lbx_Messages���� $��1��$��0��$ 
Horizontal=�.+��� -	   $��
txtMessage��$��
15 0 10 10q�$	��395��$��16(��� -
   $
 Btn_Send��#��[  ${�False��$��0 0 0 10q�$	��110��$��35��.��发送(Enter)
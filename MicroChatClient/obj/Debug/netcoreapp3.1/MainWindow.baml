   M S B A M L   `   `   `  ����J  FMicroChatClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:MicroChatClientMicroChatClient  5   	        MicroChatClient.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   )localclr-namespace:MicroChatClient  5   	   -   5          � Title$  
MainWindow��5	   	   $	��500��6   $	��750��6)    � WindowStyle$
 None=�65    � AllowsTransparency$
 True��6H    � Icon$ ReSource/logo.png��6�   .��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��2.5* �6   �� 5      $	��10* �6   .+�5   
   �  � ColumnDefinitions 5      �� 5      �� 5      .+�5      �� $��	MicroChat��6   $
��Left=�6)   $��Center=�6D   $��15 0 0 0q�6_   $
��Bold"�6q   $��20(�6�   �� 5      $��1��6    �� Orientation$ 
Horizontal=�6)   $��Right=�6B   $��Center=�6^   .+�5      �� $	����6   $��ReSource/#iconfont)�6,   $��Right=�6L   $��18(�6h   �� 5      -   5        $	����5      $��ReSource/#iconfont)�6,   $��Right=�6L   $��	15 0 15 0q�6h   $��15(�6{   6�   5      5      � 5"   
   $��1��6    5#      �� 5$      $
��0.9* �6#   �� 5%      $
��4.1* �6#   �� 5&      $��2* �6#   .+�5)      � $��15 0 0 0q�6   .+�5*      �� -   5        $��	StateIcon��5*      ���#ADADAD �� CornerRadius$ 15��6?   $��15��6Q   $��15��6\    K� ZIndex$ 1��6h   $��
50 50 10 0q�6y   �� 5+      $ ��/ReSource/headportrait.png��6   $��70��6<   $��70��6G   $
��Left=�6S   $
��Fill=�6n   5,      �� 5-      $��1��6   $ Vertical=�6)   $��Center=�6@   $
��Left=�6[   .+�5.      �� -   5        	 ��Name$	 txt_name��5.      $��chong.lu��6,   $��18(�6<   $��Medium"�6J   $	��120��6^   �� 5/      -   5        $��State��5/   &   $��离线��6   $��16(�64   $��0 5 0 0q�6B   ���#ADADAD6S   50      �� 52      $��2��6   $��Center=�6)   .+�53      �� -   5        
 ��Name$
 
Disconnect��53   M      MaterialDesignRaisedButton#��[  6   $	��100��6a   $��连接��6�   54      55      � 58   
   $��2��6    59      �� 5:      $��7* �6#   �� 5;      $��3* �6#   .+�5>      #  MaterialDesignThemes.Wpf.Card  +  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth$ Depth1=�6#   $��1��6T   $��0��6d   $��5 5 0 5q�6q   $��
15 0 15 10q�6�   .��5?      �� .��5@      �� -   5        $��
lbx_Inform��5@   !   66   5A      5B      � 5C       5D      �� 5E      $��7* �6$   �� 5F      .+�5I        $ Depth1=�6&   $��0��6W   $��0��6g   $��
15 10 0 10q�6t   $��	15 0 0 10q�6�   .��5J      �� .��5K      �� -   5        $��lbx_Messages��5K   %   6<   5L      5M      �� 5P      $��1��6   $��0��6*   $ 
Horizontal=�6:   .+�5R      �� -	   5        $��
txtMessage��5R   L   $��
15 0 10 10q�6   $	��395��62   $��16(�6>   6^   �� 5S      -
   5        $
 Btn_Send��5S   c   #��[  6   ${�False��6Q   $��0 0 0 10q�6v   $	��110��6�   $��35��6�   .��6�   发送(Enter)6�   5T      5V      5Y      5[      5\      
   M S B A M L   `   `   `  ���� G  CNETFramework, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NETFrameworkNETFramework      NETFramework.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:NETFramework       � Title$  
MainWindow��$	��490��$	��800�� � WindowStyle$ SingleBorderWindow=�.��� -    �Name$ 
LayoutRoot��
������� � RowDefinitions �� $	��380 ��� $��40 ��� $��40 �.+��� -    ��Name$ Canvas��$	��100��$	��200��.+�A� -    A�Name$ Ellipse��
��� � �$	��100��$	��200��$��1��$��Center=�$��Center=����#0096ff J� Effect )   #NETFramework.chromaKeyTextureEffect  -   EllipseChromaKey��   	Tolerance$
 0.25Q�   ColorKey$ Green��	   Texture	 �� -   TextureImage��
 �� ImageSource$.
 (pack://application:,,,/texture8by8v2.png���� -    ��Name$ TransitionSlider��$	��500��$��1�� � Minimum$	 100Q� � Maximum$	 300Q��� -   $ ToleranceSlider��$	��500�� � Value$
 0.25Q�$ 1Q�$y�Hidden=�$��2���� $��Ellipse size��
����  �$��14(�$��Center=�$��Center=�$��
0,0,0,-355q�
   M S B A M L   `   `   `  ����G  CNETFramework, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:NETFrameworkNETFramework  5   	       NETFramework.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:NETFramework     5   	     � Title$  
MainWindow��5   	   $	��490��6   $	��800��6)    � WindowStyle$ SingleBorderWindow=�65   .��5	      � -   5         �Name$ 
LayoutRoot��5	      
������� � RowDefinitions 5
   
   �� 5      $	��380 �6   �� 5      $��40 �6   �� 5      $��40 �6   .+�5   
   �� -   5         ��Name$ Canvas��5      $	��100��6!   $	��200��6.   .+�5      A� -   5         A�Name$ Ellipse��5      
��� � �$	��100��5      $	��200��5      $��1��5      $��Center=�5      $��Center=�5      ���#0096ff J� Effect 5      )   #NETFramework.chromaKeyTextureEffect  5      -   5        EllipseChromaKey��   	Tolerance$
 0.25Q�5         ColorKey$ Green��5      	   Texture	 5      �� 5       -   5        TextureImage��
 �� ImageSource$.
 (pack://application:,,,/texture8by8v2.png��5"   !   5$      5&      5'      �� 5)   
   -   5         ��Name$ TransitionSlider��5)      $	��500��5*      $��1��5+       � Minimum$	 100Q�5,       � Maximum$	 300Q�5-      5.      �� 5/   
   -   5        $ ToleranceSlider��5/      $	��500��50       � Value$
 0.25Q�51      $ 1Q�52      $y�Hidden=�54      $��2��55      �� 56   
   $��Ellipse size��57      
����  �$��14(�59      $��Center=�5:      $��Center=�5;      $��
0,0,0,-355q�5<      5=      5>      
   M S B A M L   `   `   `  ����N  JHomestayApp.Desktop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:HomestayApp.DesktopHomestayApp.Desktop  5   	   $    HomestayApp.Desktop.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:HomestayApp.Desktop     5   	   X TXceed.Wpf.Toolkit, Version=4.0.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f4:
extToolkit)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   $��24(�5        � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)   .��5
      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6!   $��Search Booking��61   $��28(�6G   �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��10q�6;   .+�5      (  "Xceed.Wpf.Toolkit.WatermarkTextBox  -   5          Name$ firstNameText��5   Y      	Watermark$ 
First Name��6*   $	��200��6A   $��10q�6M   6Y     5      -   5        $ lastNameText��5   X   $ 	Last Name��6*   $	��200��6@   $��10q�6L   6X     5      -   5        $ bookingText��5   Y   $ 
Booking Id��6*   $	��200��6A   $��10q�6M   6Y   �� 5      -   5         ��Name$ search��5      $��10q�6%   $��10q�61   .��6S   Search6[   5      �� 5    
   -   5         ��Name$ resultsList��5       $��0 5 0 0q�6'   $��2��68   ��6E   �� ��5!      �� 5"      .R�5#      �� $ Vertical=�6!   .+�5$      �� $ 
Horizontal=�6%   .+�5%      �� $��5q�6(   �� 64   .�69   Name:6@   6G   �� 5&      $��5q�6(   ��64   �� *	firstName+�� 5'      $��5q�6(   ��63   �� *
lastName+5(      �� 5)      $ 
Horizontal=�6%   .+�5*      �� $��5q�6(   �� 64   .�69   Arrival Date:6H   6O   �� 5+      $��5q�6(   ��63   �� *arrivalDate+5,      �� 5.      $ 
Horizontal=�6%   .+�5/      �� $��5q�6(   �� 64   .�69   Departure Date:6J   6Q   �� 50      $��5q�6(   ��63   �� *departureDate+51      �� 53      $ 
Horizontal=�6%   .+�54      �� $��5q�6(   �� 64   .�69   	HomeStay:6D   6K   �� 55      $��5q�6(   ��64   �� *homestayName+�� 56      $��5q�6(   �� 64   .�69   HomeStay Type:6I   6P   �� 57      $��5q�6(   ��63   �� *homestayTypeTitle+�� 58      $��5q�6(   �� 64   .�69   HomeStay Location:6M   6T   �� 59      $��5q�6(   ��63   �� *locationName+5:      �� 5;      $ 
Horizontal=�6%   .+�5<      �� $��5q�6(   �� 64   .�69   
Host Name:6E   6L   �� 5=      $��5q�6(   ��64   �� *hostFirstName+�� 5>      $��5q�6(   ��63   �� *hostLastName+5?      �� 5A      $ 
Horizontal=�6%   .+�5B      �� $��5q�6(   �� 64   .�69   Total Cost:6F   6M   �� 5C      $��5q�6(   ��64   �� *	totalCost+5D      �� 5F      $ 
Horizontal=�6%   .+�5G      �� $��5q�6%   $��10q�60   .��6=   
Check In6G   5H      5I      5J      5M      5Q      5R      
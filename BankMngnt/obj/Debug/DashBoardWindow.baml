   M S B A M L   `   `   `  ����D  @BankMngnt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:BankMngnt	BankMngnt  5   	       BankMngnt.DashBoardWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:BankMngnt     5   	   -   5          � Title$  DashBoardWindow��5   	   $	��450��6!   $	��800��6.   .��5	      � $
��1200��6    � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��	HOME PAGE��6   $��32(�6%   $
��bold"�63   $��Center=�6E   $��0��6b   $��10 20 10 10q�6o   � 5   
   $��1��6   $��10 20 10 10q�6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   .+�5      �� -   5         ��Name$ 
btnDeposit��5      $��0��6)   $��20 0 0 0q�69   $��Deposit��6K   $��14(�6]   
�������$
��Bold"�5   -   $��0q�6?   $��50��6S   
���   �5   &   �� 5       -   5        $ btnWithdraw��5       $��1��6*   $��20 0 0 0q�6:   $��Withdraw��6L   $��14(�6_   
�������$
��Bold"�5!   2   $��0q�6D   $��50��6X   
���   �5"   ,   �� 5%      -   5        $ 
btnManager��5%      $��2��6)   $��20 0 0 0q�69   $��Account Management��6K   $��14(�6h   
�������$
��Bold"�5&   (   $��0q�6:   $��50��6N   
���   �5'       5(      � 5)   
   $��2��6   $��10 20 10 10q�6    5*      �� 5+      $	��89* �6#   �� 5,      $
��441* �6#   �� 5-      $	��250 �6#   51      52      54      
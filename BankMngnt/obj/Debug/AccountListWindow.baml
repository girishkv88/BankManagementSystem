   M S B A M L   `   `   `  ����D  @BankMngnt, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:BankMngnt	BankMngnt  5   	   !    BankMngnt.AccountListWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:BankMngnt     5   	   -   5          � Title$  AccountListWindow��5   	   $	��450��6#   $	��800��60   .��5	      � $
��1200��6   $��10 10 10 10q�6    � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   �� $��0��6   $��Account Management��6!   $��24(�5   	   $
��bold"�5   	    �� TextAlignment$ center=�5   	   �� 5   
   -   5        $��1��5      $��Add Account��6   $	��200��64   $��30��6@   $��0 10 0 0q�6L   $
��left=�6^   
���/���
���   �$
��bold"�5   2   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ grdAccounts��5      $��2��6(   $��0 10 0 0q�65      
IsReadOnly .    AreRowDetailsFrozen .    AutoGenerateColumns .     SelectionMode$ Single=�5       �� SelectedItem 5   	   �� *SelectedAccount+	 �� Mode$	 TwoWay=���5      �� *
Accounts+
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Account Number��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *AccountNumber+  5      $
 Name��6%    63   �� *Name+  5      $ Balance��6%    66   �� *	Balance+  5       $
 Type��6%    63   �� *Type+  5!      $ Email��6%    64   �� *Email+  5"      $ Phone Number��6%    6;   �� *PhoneNumber+  5#      $ Address��6%    66   �� *	Address+  5$      $ IsActive��6%    67   �� *
IsActive+  5%      $ Interest Percentage��6%    6B   �� *InterestPercentage+  5&      $ Transaction Count��6%    6@   �� *TransactionCount+  5'      $ Last Transaction Date��6%    6D   �� *LastTransactionDate+5+      �� 5,   
   -   5        $��1��5,      $��Update Account��6   $	��200��67   $��30��6C   $��0 10 0 0q�5-      $��Right=�6   
���/���
���   �$
��bold"�5.   2   �� 50   
   -   5         ��Name$ 
btnDeposit��50      $��3��6%   $��DEPOSIT��62   $	��200��6D   $��30��6P   $��0 10 0 0q�51      $��Center=�6   
���/���
���   �$
��bold"�52   -   6?   �� 53   
   -   5        $ 	btnDelete��53      $��3��6$   $��DeleteAccount(InActive)��61   $	��200��6S   $��30��6_   $��0 10 0 0q�54      $
��Left=�6   
���/���
���   �$
��bold"�55   -   �� 56   
   -   5        $ btnWithdraw��56      $��3��6&   $��WITHDRAW��63   $	��200��6F   $��30��6R   $��0 10 0 0q�57      $��Right=�6   
���/���
���   �$
��bold"�58   -   6?   5:      5<      
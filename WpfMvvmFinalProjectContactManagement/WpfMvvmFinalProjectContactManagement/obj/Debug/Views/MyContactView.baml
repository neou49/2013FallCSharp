   M S B A M L   `   `   `  ����(  $WpfMvvmFinalProjectContactManagement>    8WpfMvvmFinalProjectContactManagement.Views.MyContactView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      h dMicrosoft.Expression.Interactions, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bei9http://schemas.microsoft.com/expression/2010/interactions  5        � Title$  MyContactView��5   	   $	��722��6   $��951.875��6,   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $
��287* �6   �� 5      $
��657* �6   .+�5   
   � $��1��6   $��0,0,0,10q�6    � RowDefinitions 5      �� 5      $
��288* �6    �� 5      $
��236* �6    �� 5      $	��75* �6    �� 5      $	��82* �6    .+�5      � $��0,0,0,5q�6   .+�5      �� $��Contact Details��6   $��10,5,5,0q�64   .��5      � $��	0,0,-2,-2q�6   .+�5      �� $��First Name:��6    $
��Left=�66   $��	10,10,0,0q�6Q   $	��Top=�6d   $	��115��6|   �� 5      $
��Left=�6"   $��23��6=   $��
143,13,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $	��Top=�6�   $	��191��6�   ��6q   �� *	FirstName+6�   �� 5      $��
Last Name:��6    $
��Left=�65   $��	10,38,0,0q�6P   $	��Top=�6c   $	��115��6{   �� 5      $
��Left=�6"   $��23��6=   $��
143,41,0,0q�6I   $
 Wrap=�6]   $	��Top=�6�   $	��191��6�   ��6q   �� *
LastName+6�   �� 5      $��Date of Birth:��6    $
��Left=�69   $��	10,66,0,0q�6T   $	��Top=�6g   $	��115��6   (  "System.Windows.Controls.DatePicker  5      $
��Left=�6J   $��
143,69,0,0q�6e   $	��Top=�6y   $	��191��6�      SelectedDate 6%   �� *DateOfBirth+6�   �� 5      $	��NEW��6!   $
��Left=�6/   $��	92,0,0,10q�6J   $��88��6]   $��32��6h   $��Bottom=�6t   �� 5      $��DELETE��6!   $
��Left=�62   $��
231,0,0,10q�6M   $��88��6a   $��32��6l   $��Bottom=�6x   �� 5       $
��SAVE��6!   $
��Left=�60   $��
380,0,0,10q�6K   $��88��6_   $��32��6j   $��Bottom=�6v   �� 5!      $��Gender:��6    $
��Left=�62   $��	10,93,0,0q�6M   $	��Top=�6`   $	��115��6x   �� 5"      $
��Left=�6r   $��
143,96,0,0q�6�   $	��Top=�6�   $	��191��6�   ��6#   �� *
GenderList+ �� SelectedItem 6F   �� *GenderSelectedItem+6�   �� 5#      $��Nationality:��6    $
��Left=�67   $��
10,120,0,0q�6R   $	��Top=�6f   $	��115��6~   �� 5$      $
��Left=�6|   $��143,123,0,0q�6�   $	��Top=�6�   $	��191��6�   ��6#   �� *NationalityList+ 6K   �� *NationalitySelectedItem+6�   �� 5%      $��Education Level:��6    $
��Left=�6;   $��
10,147,0,0q�6V   $	��Top=�6j   $	��115��6�   �� 5&      $
��Left=�6�   $��143,150,0,0q�6�   $	��Top=�6�   $	��191��6�   ��6#   �� *EducationLevelList+ 6N   �� *EducationLevelSelectedItem+6�   �� 5'      $��Current Occupation:��6    $
��Left=�6>   $��
10,174,0,0q�6Y   $	��Top=�6m   $	��115��6�   �� 5(      $
��Left=�6�   $��143,177,0,0q�6�   $	��Top=�6�   $	��191��6�   ��6#   �� *CurrentOccupationList+ 6Q   �� *CurrentOccupationSelectedItem+6�   5)      5*      5+      � 5,      $��1��6   $��3��6    $��10,0,0,0q�61   5-      �� 5.   
   $��First Name Search:��6   $
��Left=�6-   $��	10,10,0,0q�6H   $	��Top=�6[   $��24��6s   $	��109��6   $y�Hidden=�6�   �� 5/   
   $
��Left=�6   $��24��6-   $��
119,10,0,0q�69   $
 Wrap=�6M   $	��Top=�6�   $	��130��6�   $y�Hidden=�6�   ��6a   �� *FirstNameSearch+6�   �� 50   
   $��Contact List��6   $��	5,39,10,5q�6*   .��51      &   System.Windows.Controls.DataGrid  $��	0,0,-2,-3q�6      ClipboardCopyMode$ IncludeHeader=�52         AutoGenerateColumns .    
IsReadOnly . 	   AreRowDetailsFrozen	 . 
   AlternatingRowBackground#
 � ��58   #      FrozenColumnCount$ 7��6�      HorizontalGridLinesBrush# � ��6�      VerticalGridLinesBrush# � ��6�   ��55      �� *MyContactNameList+ �� Mode$ TwoWay=� 56      �� *MyContactNameSelectedItem+$ TwoWay=� �� SelectedIndex 57      �� *MyContactNameSelectedIndex+$ TwoWay=�.  (System.Windows.Interactivity.Interaction   Triggers 59      /  )System.Windows.Interactivity.EventTrigger  5:         	EventName$ SelectionChanged��6%   .  (System.Windows.Interactivity.TriggerBase   Actions. 5;      >  8Microsoft.Expression.Interactivity.Core.CallMethodAction     
MethodName$+ %DataGridMyContactNameSelectionChanged��5=         TargetObject 5<      �� 5=      5>      5@      5A      �� 5B   
   $��Stretch=�6   $��0,-1,0,6q�65    J� RenderTransformOrigin$ 0.5,0.5&�6G   $��8��6g   5D      5F      5G      
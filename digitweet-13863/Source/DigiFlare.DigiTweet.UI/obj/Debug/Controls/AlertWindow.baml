   M S B A M L   `   `   `  ����  	DigiTweet(    "DigiFlare.DigiTweet.UI.AlertWindow   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   8x,http://schemas.microsoft.com/winfx/2006/xaml    5   	     � WindowStyle$
  None=�5   	    � AllowsTransparency . $	��100��5   	   $	��225��6   
���   �
���   �$��1q�5	   	    J� Opacity$ 0Q�5
   	    � ShowInTaskbar .  ��5      �� 5   
   .R�5      �� #��z��6   #��z��5      #��z��5       J� SnapsToDevicePixels . ._�5      �  � RowDefinitions 5      �� 5      $��20 �6(   �� 5      .+�5      � $��0��6   
���   �.+�5      �  � ColumnDefinitions 5      �� 5   "   �� 5   "   $��20 �63   .+�5      �� $��0��6(   $��5,0,0,0q�68   $
��Bold"�6I   $��12(�6[   
�������$	 1.0Q�5   ;   $��digiTweet Notification��6I   �� 5       ��Name$ btnClose��6%   -   5        $��1��5    %   $��Right=�5"   %   $	��Top=�6A   $��18��5#   %   $��18��60   $��8(�5$   %   $
��Bold"�5%   %   
�������
���   �$��x��5(   %   5)      5*      �� 5+      $��1��6%   #��z��62   $
��Left=�5,   %   $	��Top=�6@   $��5q�5-   %   5.      5/      50      .��52      �  53   
   �� 54      $��25 �6   �� 55      $��* �6   .+�57   
   �� -   5         ��Name$ 	imgAvatar��57      $��0��58      $��5q�59      ��5:      �� 	 �� Path$	 User.ProfileImageUrl�
 �� RelativeSource
 ��  �� AncestorType" � �� Mode$ FindAncestor=��� 5;   
   $��1��6   $��5q�5<      
�������$��12(�5>      ��5?      �� 5@      $	 Message�5A      
 5@      �� " �$ FindAncestor=�5A      5C      5D      5E      
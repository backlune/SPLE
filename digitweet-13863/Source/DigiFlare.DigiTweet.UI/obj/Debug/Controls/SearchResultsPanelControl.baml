   M S B A M L   `   `   `  ����D  @DigiTweet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:DigiFlare.DigiTweet.UI.Converters!DigiFlare.DigiTweet.UI.Converters  5      6    0DigiFlare.DigiTweet.UI.SearchResultsPanelControl   5      \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      D
converters/clr-namespace:DigiFlare.DigiTweet.UI.Converters    5        � 	Resources  5      >   8DigiFlare.DigiTweet.UI.Converters.SearchDetailsConverter   SearchResultDetails��%   &	          5   
   6,   5      .��5      � .+�5
   
   �� -   5         ��Name$ icSearchResults��5
      $��1��60   $��0��6=   $��2��6M   ��5      �� 5      .R�5      �� $��0��6#   .��5      �  � RowDefinitions 5      �� 5   "   $
��Auto �60   �� 5   "   $
��Auto �60   .+�5      �� $��0��6-   �� 5       ��Name$ btnMoreSearchResults��6%   -   5        $��1��5   %   $��More Results...��5   %   $��Right=�5   %   $��5q�5   %   $	��100��60   $��25��6<   ���	#FFFFFFFF � Cursor$
 Hand��5   <     GenericButton#���  5   %   y�5   "   �� 5   &    �� Path$% ShowMoreSearchResultsVisibility�5   .    �� RelativeSource 5   .   ��  �� AncestorType" >� �� Mode$ FindAncestor=�5   .   5       5!      5"      5#      ��5%      �� 5&      .R�5'      �� 	 �� Orientation$	 Vertical=�6!   5(      ��5*      �� 5+      .R�5,      �� $
��Auto��6   $��5,10,5,0q�6+     
ItemBorder#���  5-   9   ._�5.      �  5/      �� 50   "   $��50 �60   �� 51   "   $
��Auto �60   
 � ColumnDefinitions
 53      �� 54   "   $��50 �63   �� 55   "   $��* �63   .+�57      �� -   5        $��0��57   $   $��0��61   $��50��5:   $   $��50��6/   $��5q�6;   $
 Hand��6F   ��58   $   �� *AuthorAvatarUrl+5:   F   �� 5;      -   5        $��0��5;   (   $��1��65   
�������$
��Wrap=�5>   (   ��5<   (   �� $ Title�5?   (   �� 5@      $��1��6(   $��0��65   $��2��6E   $��10(�5A   (   
�������$��Bottom=�5C   (   ��5D   (   ��  �� 	Converter# [  5E      5F      5G      5I      5J      5K      
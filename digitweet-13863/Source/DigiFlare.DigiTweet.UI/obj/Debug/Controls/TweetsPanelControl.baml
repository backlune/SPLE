   M S B A M L   `   `   `  ����D  @DigiTweet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:DigiFlare.DigiTweet.UI.Converters!DigiFlare.DigiTweet.UI.Converters  5      /    )DigiFlare.DigiTweet.UI.TweetsPanelControl   5      \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.31016.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      F
converters/clr-namespace:DigiFlare.DigiTweet.UI.Converters     5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5        � 	Resources  5      >   8DigiFlare.DigiTweet.UI.Converters.StatusDetailsConverter   TweetDetails<  6DigiFlare.DigiTweet.UI.Converters.DeleteTweetConverter  DeleteTweetButtonEnabled;  5DigiFlare.DigiTweet.UI.Converters.TweetColorConverter  
TweetColor��%W   &	        &	      &	 &       5   
   6,     5   
   6*     5   
   6)   5	      .��5
      �� -   5         ��Name$ icTweets��5
      ��5   
   �� 5      .R�5      �� .��5      �  � RowDefinitions 5      �� 5      $
��Auto �6,   �� 5      $
��Auto �6,   .+�5      �� $��0��6)   �� 5      -   5        $��1��5   !   $��More Tweets...��5   !   $��Right=�5   !   $��5q�5   !   $	��100��6,   $��25��68   ���	#FFFFFFFF � Cursor$
 Hand��5   8     GenericButton#���  5   !   y�5      �� 5   "    �� Path$ IsShowMoreButton�5   *    �� RelativeSource 5   *   ��  �� AncestorType" >� �� Mode$ FindAncestor=�5   *   5      5       5!      5"      ��5$   
   �� 5%      .R�5&      ��  �� Orientation$ Vertical=�6   5'      ��5)   
   �� 5*      .R�5+      �� $
��Auto��6   $��5,10,5,0q�6'     
ItemBorder#���  5,      ��5-      �� 5.      	 �� 	Converter#	 [ 6"   
 � Triggers
 50      :� 51       :� RoutedEvent$ Border.MouseEnter��6'   .[�52      �� .��53   "   �� .��54   &   W�  �� 
TargetName$ TweetOptions��66    �� TargetProperty$ (WrapPanel.Opacity)�55   6    g� 	BeginTime$ 0:0:0.4X�56   6   	 W� To$ 1X�57   6    g� Duration$ 0:0:0.5D�6=    g� AccelerationRatio$
 0.10Q�58   6    g� DecelerationRatio$
 0.25Q�6O   59   #   5:      5;      :� 5<      $ Border.MouseLeave��6'   .[�5=      �� .��5>   "   �� .��5?   &   W� $ TweetOptions��66   $ 0X�5@   6   $ 0:0:0.5D�6=   $
 0.10Q�5A   6   $
 0.25Q�6O   $ (Grid.Opacity)�5B   6   5C   #   5D      5E      ._�5G      �  5H      �� 5I      $��50 �6,   �� 5J      $
��Auto �6,    � ColumnDefinitions 5L      �� 5M      $��50 �6/   �� 5N      $��* �6/   �� 5O      $��50 �6/   �� 5P      $��25 �6/   .+�5R      �� -   5        $��0��5R   #   $��2��60   $��3��6A   $��Center=�5T   #   $��Center=�5U   #     	Favourite#���  5W   #   $
 Hand��6G    � ToolTip$ Add to Favourite��6U    d� 	IsChecked 5S   #   �� $ 
Favourited�5X      �� 5Y      -   5        $��0��5Y       $��0��6-   $��5,5,5,5q�5[      $
 Hand��5\       ��5Z      �� $ User.ProfileImageUrl�5]      �� 5^      -   5        $��0��5^   $   $��1��61   $��0,0,0,0q�5`   $   $��12(�5a      
�������$
��Wrap=�5c      ��5_   $   �� *Text+5d      �� 5e      $��1��6$   $��0��61   $��4��6A   $��10(�5f   $   
���������5g   $   �� #	 [  � 5h       �Name$ TweetOptions��5i   $   $��0��5h   $   $��2��61   $��Center=�5j   $   $��Center=�5k   $    J� Opacity$ 0Q�5l   $   .+�5m      �� -   5        $��25��5m   %   $��25��60   ���	#FFFFFFFF$
 Hand��5p   %   $ Reply��63    	 Reply#���  5q   %   �� 5r      -   5        $��25��5r   %   $��25��60   $
 Hand��5t   %   $ Direct Message��63   ���	#FFFFFFFF  DirectMessage#���  5u   -   �� 5v      -   5        $��25��5v   %   $��25��60   $
 Hand��5x   %   $ Retweet��63   ���	#FFFFFFFF  Retweet#���  5y   3   �� 5z      -	   5        $��25��5z   %   $��25��60   $
 Hand��5|   %   $ Delete��63   ���	#FFFFFFFF 		 Trash#��� 	 5}   -   {�5~   "   `� 5   &    `� 	Converter# [ 63   .1�5�   *   �� $ User.Id�62   �� 5�   *   $ LoggedInUser�5�       5�   2   �� " �$ FindAncestor=�5�      5�   '   5�      5�      5�      5�      5�      5�      5�      
   M S B A M L   `   `   `  ����I  EFoodRecomender, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:FoodRecomenderFoodRecomender  5   	       FoodRecomender.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:FoodRecomender     5   	     � Title$  
MainWindow��5   	   $
��1600��6   $
��1500��6*   .��5	      � ��5
   
   �� 5       �� ImageSource$ Food.jpg��6    j� Stretch$ UniformToFill=�60   .+�5   
   � $	��Top=�6   $��Center=�6'   .+�5      �� -   5         ��Name$ button��5      $��40��6%   
������$��Get the Items��6I   $
��Left=�6a   $	��Top=�6|   $	��103��6�   $��	50,84,0,0q�6�   6�   �� 5      -   5         ��Name$ comboBox��5      $
��Left=�6)   $	��Top=�6D   $��25��6\   $	��120��6h   $��
182,32,0,0q�6t   .@�5      �� $��Please Select��6    �� 
IsSelected . 67   �� 5      $��	Beverages��6   �� 5      $��Candy��6   �� 5      $��	Chocolate��6   �� 5      $��Cereals��6   �� 5      $��Snacks��6   �� 5      $��CatFood��6   �� 5      $��DogFood��6   �� 5      $��
CannedFood��6   �� 5      $��PackagedMeals��6   �� 5      $��BabyFood��6   �� 5      $
��beer��6   �� 5      $��FishFood��6   �� 5      $��MeatFood��6   �� 5      $��Noodles and Pasta��6   �� 5      $��Pizza and Burger��6   �� 5       $��Salads��6   5"      �� 5$      -   5        $ button1��5$      $��40��6&   
������$��	Clear all��6J   $
��Left=�6^   $	��Top=�6y   $	��112��6�   $��
329,84,0,0q�6�   6�   5%      � 5&   
   .+�5'      �� $��Center=�6   $��Bottom=�62   
���   �$��2q�6a   ._�5(      &   System.Windows.Controls.DataGrid  -   5        $��grid1��5(   V   $	��600��6   $��Center=�6(   $��4,4,4,4q�6E   $��Bottom=�6c   $	��106��6~   ���	#FFF2F2F26�   5)      5*      5+      5,      
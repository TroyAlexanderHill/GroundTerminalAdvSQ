   M S B A M L   `   `   `  ????J  FGround Terminal, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Ground_TerminalGround_Terminal  5   	        Ground_Terminal.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Ground_Terminal     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??800??6)    ? 	Resources 5
       ?? 
TargetType ?? Property ?? Value ?? 
TargetType ?? Orientation ?? Padding ??Name	 ?? CornerRadius
 J? Effect3  -System.Windows.Media.Effects.DropShadowEffect   ShadowDepth   	Direction   Opacity A?Name ?? Stretch   
BlurRadius ?? Triggers :? RoutedEvent ?? 
TargetName ?? TargetProperty	 ?? To g? Duration	 t? To&   System.Windows.Controls.DataGrid   ColumnHeaderStyle1  
CellStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader*  $System.Windows.Controls.DataGridCell  SearchTextBox_Background ?? Color  SearchTextBox_Foreground  SearchTextBox_Border ?? 
StartPoint ?? EndPoint ? Color ? Offset ! SearchTextBox_BorderMouseOver " SearchTextBox_SearchIconBorder & "SearchTextBox_SearchIconBackground , (SearchTextBox_SearchIconBorder_MouseOver 0	 ,SearchTextBox_SearchIconBackground_MouseOver ,
 (SearchTextBox_SearchIconBorder_MouseDown 0 ,SearchTextBox_SearchIconBackground_MouseDown   SearchTextBox_LabelTextColor#   Ground_Terminal.SearchTextBox ?? Padding ?Name ? ColumnDefinitions  ?? RelativeSource! ?? Path" ??Name# ??Name$ ??Name% P? Property& P? Value' ?? 
TargetName( ]? 
Conditions) ?? Property* ?? Value+ ?? 
SourceName??%?  'd?       '  f    &	  ?    &	 ?    &	 >    &	 ]    &	 |    &	 J    &	 	    &	 7	    &	 V	    &		 ?	    &	
 ?
    &	 ?    &	 ?    '  ?    7  7  7  7  7  7  7  7  7  7 	 7  7 	 7 
 7  ?? 5   
   " d?6   .?5      ??  ? ?? 5      ?? 5      " d?6&   .R?5      ?? $ 
Horizontal=?6%   .+?5      ?? $??Real-Time Mode??6(   $ 5q?6>   $??Center=?6J   $??SemiBold"?6e   (? 5      .??5   "   ?? $ Border??6)   $	 10??69   ???	#FFFFFFFF$??40??5   )   $??20??64   
 5   &     5   *   $	 0.5Q?6;   $ 0Q?6M   $	 0.3Q?6[   ._?5   &   A? $ Ellipse??6.   ???	#FFFFFFFF$ Uniform=?6P   $??2 1 2 1q?5   -   
???????$	??0.2??5   ;   $??Stretch=?5   -   
 5   *     5   .   $ 10Q?6?   $ 1Q?6O   $	 0.3Q?6_   $	 260Q?6m   5    '   5!   #   5"      5#       5%      :? 5&      $ Checked??6+   .[?5'   "   ?? .??5(   &   ?? .??5)   *   ?? $ Border??69   $1 +(Border.Background).(SolidColorBrush.Color)?5*   5   $ 	#FF4CD661X?5+   5   $ 0:0:0.1D?5,   5   t? 5-   *   $ Ellipse??6=   $ Margin?5.   9   $ 20 1 2 1X?5/   9   $ 0:0:0.1D?50   9   51   '   52   #   53      :? 54      $ 	Unchecked??6+   .[?55   "   ?? .??56   &   ?? .??57   *   ?? $ Border??69   $1 +(Border.Background).(SolidColorBrush.Color)?58   5   $ WhiteX?59   5   $ 0:0:0.1D?5:   5   t? 5;   *   $ Ellipse??6=   $ Margin?5<   9   $ 2 1 2 1X?5=   9   $ 0:0:0.1D?5>   9   5?   '   5@   #   5A      5C      5E      5F      ?? 5J   
   "  6   .?5K      ??  ?@ ColumnHeaderStyle# ?   62   ?? 5L       ?@ 	CellStyle# ?  6*   5M      ?? 5Q   
   "  6+   .?5R      ??  ? ??$ 30??6'   ?? 5S       ? ??
 ?OO/?6+   ?? 5T       ? ??$ SemiBold"?6+   ?? 5U       ? ??$ 14(?6)   ?? 5V       ? ??$ Center=?6;   5W      ?? 5[   
   "  6#   .?5\      ??  ? ??$ 13(?6)   ?? 5]       ? ??$ Center=?6;   5^      ?? 5b   
   $ White??6;   ?? 5c   
   $ Black??6;   ?? 5d   
   $	 0,0&?6;   $	 0,1&?6L   .??5e      ? $ 	#FFABADB3??6   $
 0.05Q?6-   ? 5f      $ 	#FFE2E3EA??6   $
 0.07Q?6-   ? 5g      $ 	#FFE3E9EF??6   $ 1Q?6-   5h      ?? 5i   
   $	 0,0&?6D   $	 0,1&?6U   .??5j      ? $ 	#FF5C97C1??6   $
 0.05Q?6-   ? 5k      $ 	#FFB9D7EB??6   $
 0.07Q?6-   ? 5l      $ 	#FFC7E2F1??6   $ 1Q?6-   5m      ?? 5n   
   $ White??6A   ?? 5o   
   $ White??6E   ?? 5p   
   $	 0,0&?6O   $	 0,1&?6`   .??5q      ? $ 	#FFFFFFFF??6   $ 0Q?6-   ? 5r      $ 	#FFE5F4FC??6   $ 1Q?6-   5s      ?? 5t   
   $	 0,0&?6S   $	 0,1&?6d   .??5u      ? $ 	#FFE7F5FD??6   $ 0Q?6-   ? 5v      $ 	#FFD2EDFC??6   $	 0.5Q?6-   ? 5w      $ 	#FFB6E3FD??6   $
 0.51Q?6-   ? 5x      $ 	#FF9DD5F3??6   $ 1Q?6-   5y      ?? 5z   
   $	 0,0&?6O   $	 0,1&?6`   .??5{      ? $ 	#FFFFFFFF??6   $ 0Q?6-   ? 5|      $ 	#FFE5F4FC??6   $ 1Q?6-   5}      ?? 5~   
   $	 0,0&?6S   $	 0,1&?6d   .??5      ? $ 	#FFE7F5FD??6   $ 0Q?6-   ? 5?      $ 	#FFD2EDFC??6   $	 0.5Q?6-   ? 5?      $ 	#FFB6E3FD??6   $
 0.51Q?6-   ? 5?      $ 	#FF9DD5F3??6   $ 1Q?6-   5?      ?? 5?   
   $
 Gray??6?   ?? 5?   
   "  65   .?5?      ??  ? ??8   6+   ?? 5?       ? ??8  6,   ?? 5?       ? ??8  6+   ?? 5?       ? ??$ 1q?60   ?? 5?       ?@J?SnapsToDevicePixels . 64   ?? 5?       ?@ 	LabelText$ Search??6*   ?? 5?       ?@?FocusVisualStyle 61   Z? ?? 5?       ?@ LabelTextColor8  6/   ?? 5?       ? ?? 5?      ?? 5?      "  6&   .R?5?      ?? $ Border??6!   $ 2q?5?   !   #??z??5?   !   #??z??5?   !   #??z??5?   !   ._?5?      ? $ 
LayoutGrid??6#    5?   "   ?? 5?   &   $??* ?67   ?? 5?   &   ??67   ??   ?? *TemplatedParent+$! ActualHeight?.+?5?   "   ?? $" PART_ContentHost??6/   $??0??6I   ?? 5?   "   $# 	LabelText??6(   $??0??5?   (   $??2,0,0,0q?5?   (   $??Italic$?5?   (   ??5?   (   ??   ?? *TemplatedParent+$! LabelTextColor???5?   (   ??   ?? *TemplatedParent+$! 	LabelText?5?   (   ?? 5?   "   $ PART_SearchIconBorder??6)   $??1??5?   '   $??1q?5?   '   $ 1q?5?   '   $??Stretch=?5?   '   $??Stretch=?5?   '   8?? 8?? ._?5?   &   ?? $$ 
SearchIcon??6,   $
??None=?5?   ,   $??15??5?   ,   $??15??5?   ,   $??Center=?5?   ,   $??Center=?5?   ,   $??Images/search.png??5?   ,   5?   #   5?      5?       5?      P? 5?      % ?@J?IsMouseOver& . . ?5?   "   ?? 8   ? ??6@   5?      P? 5?      % ?@J?IsKeyboardFocusWithin& . . ?5?   "   ?? 8   ? ??6@   5?      P? 5?      % ?@ HasText& . . ?5?   "   ?? $' 	LabelText??6?    ? y?$ Hidden=?6V   5?      ]? 5?      ( 5?   "   ?? 5?   &   ) ?@ HasText* . 6C   ?? 5?   &   ) ?@ 
SearchMode$* Instant=?6F   ./?5?   "   ?? $' 
SearchIcon??5?   )    ? ??$ Images/clear.png??5?   )   5?      ]? 5?      ( 5?   "   ?? 5?   &   $+ PART_SearchIconBorder??6G   ) ?@J?IsMouseOver* . 6j   ?? 5?   &   ) ?@ HasText* . 6C   ./?5?   "   ?? $' PART_SearchIconBorder??5?   /   8   ? ??5?   /   ?? 5?   "   $' PART_SearchIconBorder??5?   3   8 	  ? ??5?   3   5?      ]? 5?      ( 5?   "   ?? 5?   &   $+ PART_SearchIconBorder??6G   ) ?@J?IsMouseOver* . 6j   ?? 5?   &   ) ?@ HasText* . 6C   ./?5?   "   ?? $' PART_SearchIconBorder??5?   1   8 
  ? ??5?   1   ?? 5?   "   $' PART_SearchIconBorder??5?   1   8   ? ??5?   1   5?      ]? 5?      ( 5?   "   ?? 5?   &   $+ PART_SearchIconBorder??6G   ) ?@J?IsMouseOver* . 6j   ?? 5?   &   ) ?@ IsMouseLeftButtonDown* . 6Q   ?? 5?   &   ) ?@ HasText* . 6C   ./?5?   "   ?? $' PART_SearchIconBorder??5?   '    ?@??Padding$ 2,0,0,0q?5?   '   ?? 5?   "   $' PART_SearchIconBorder??5?   '   8   ? ??5?   '   ?? 5?   "   $' PART_SearchIconBorder??5?   '   8   ? ??5?   '   5?      5?      5?      5?      5?      .??5?      ? , ? RowDefinitions, 5?   
   ?? 5?      $??40 ?6   ?? 5?      $??* ?6   ?? 5?      $??30 ?6   .+?5  
     -   5        -  Name$- 	telSearch??5     #   Ground_Terminal.SearchTextBox.   Search$. SearchTextBox_Search??6s   $??25??61   $??
10,5,10,10q?6=   $??0??6Q   /   
SearchMode$/ Delayed=?6^   6s     5  
   -   5        $??dataGrid??5     $??1??5     0   AutoGenerateColumns0 .  1   
IsReadOnly1 . 2   AreRowDetailsFrozen2 . 3   CanUserReorderColumns3 .  "4   VerticalScrollBarVisibility$
4 Auto=?5     5   CanUserResizeColumns5 .  
???????6   RowBackground
6 ??İ?7   AlternatingRowBackground
7 ?????8   Columns8 5     0  *System.Windows.Controls.DataGridTextColumn  5     ,  &System.Windows.Controls.DataGridColumn9   Header$9 	Timestamp??6%   :   MinWidth$	: 200Q?5     ;   Width5	  /System.Windows.Controls.DataGridLengthConverter$
; 1.2*	 6(   1
  +System.Windows.Controls.DataGridBoundColumn< 
  Binding< 5     ?? *	Timestamp+5  (     5     $9 Accel X??6%   $; *	 5  4   < 6   ?? *AccelX+64     5      $9 Accel Y??6%   $; *	 5!  4   < 6   ?? *AccelY+64     5"     $9 Accel Z??6%   $; *	 5#  4   < 6   ?? *AccelZ+64     5$     $9 Weight??6%   $; *	 5%  4   < 6   ?? *Weight+64     5&     $9 Altitude??6%   $; *	 5'  6   < 6   ?? *
Altitude+66     5(     $9 Pitch??6%   $; *	 5)  3   < 6   ?? *Pitch+63     5*     $
9 Bank??6%   $; *	 5+  2   < 6   ?? *Bank+62   5-     d? 5/  
   -   5        = d?Name$= toggleRealTimeMode??5/  $   $??2??6   > ?? 	ClickMode$> Press=?50     $	??280??6)   $??20??65   $
??Left=?51     $??Real-Time Mode??62   53     ?? 54  
   -   5        $??Right=?54     $	??100??6-   $??2??69   $??Connect??6F   6X   55     56     
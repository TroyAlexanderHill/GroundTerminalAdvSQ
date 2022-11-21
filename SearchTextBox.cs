/*
* FILE          : SearchTextBox.cs
* PROJECT       : SENG3020 - Term Project
* PROGRAMMER    : Troy Hill, Jessica Sim
* FIRST VERSION : 2022-10-30
* DESCRIPTION:
*    This file conains all the functionalities for search box
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace Ground_Terminal
{
    public enum SearchMode
    {
        Instant,
        Delayed,
    }

    public class SearchTextBox : TextBox
    {

        public static DependencyProperty LabelTextProperty =
            DependencyProperty.Register(
                "LabelText",
                typeof(string),
                typeof(SearchTextBox));

        public static DependencyProperty LabelTextColorProperty =
            DependencyProperty.Register(
                "LabelTextColor",
                typeof(Brush),
                typeof(SearchTextBox));

        public static DependencyProperty SearchModeProperty =
            DependencyProperty.Register(
                "SearchMode",
                typeof(SearchMode),
                typeof(SearchTextBox),
                new PropertyMetadata(SearchMode.Instant));

        private static DependencyPropertyKey HasTextPropertyKey =
            DependencyProperty.RegisterReadOnly(
                "HasText",
                typeof(bool),
                typeof(SearchTextBox),
                new PropertyMetadata());
        public static DependencyProperty HasTextProperty = HasTextPropertyKey.DependencyProperty;

        private static DependencyPropertyKey IsMouseLeftButtonDownPropertyKey =
            DependencyProperty.RegisterReadOnly(
                "IsMouseLeftButtonDown",
                typeof(bool),
                typeof(SearchTextBox),
                new PropertyMetadata());
                public static DependencyProperty IsMouseLeftButtonDownProperty =
                    IsMouseLeftButtonDownPropertyKey.DependencyProperty;


        private static DependencyProperty SearchEventTimeDelayProperty =
            DependencyProperty.Register(
                "SearchEventTimeDelay",
                typeof(Duration),
                typeof(SearchTextBox),
                new FrameworkPropertyMetadata(
                    new Duration(new TimeSpan(0,0,0,0,500)),
                    new PropertyChangedCallback(OnSearchEventTimeDelayChanged)));

        public static readonly RoutedEvent SearchEvent =
            EventManager.RegisterRoutedEvent(
                "Search",
                RoutingStrategy.Bubble,
                typeof(RoutedEventHandler),
                typeof(SearchTextBox));

        static SearchTextBox()
        {
            DefaultStyleKeyProperty.OverrideMetadata(
                typeof(SearchTextBox),
                new FrameworkPropertyMetadata(typeof(SearchTextBox)));
        }

        private DispatcherTimer searchEventDelayTimer;

        public SearchTextBox()
        : base()
        {
            searchEventDelayTimer = new DispatcherTimer();
            searchEventDelayTimer.Interval = SearchEventTimeDelay.TimeSpan;
            searchEventDelayTimer.Tick += new EventHandler(OnSearchEventDelayTimerTick);
        }

        /*
        * FUNCTION : OnSearchEventTimeDelayChanged
        * DESCRIPTION : This function apply the template to search icon border
        * PARAMETERS : object o: object
        *              EventArgs e: it contains state information and event data associated with event
        * RETURNS : void
        */
        void OnSearchEventDelayTimerTick(object o, EventArgs e)
        {
            searchEventDelayTimer.Stop();
            RaiseSearchEvent();
        }

        /*
        * FUNCTION : OnSearchEventTimeDelayChanged
        * DESCRIPTION : This function apply the template to search icon border
        * PARAMETERS : DependencyObject o: dependency object of search text box
        *              DependencyPropertyChangedEventArgs e: it contains state information and event data associated with dependecy property changed event
        * RETURNS : void
        */
        static void OnSearchEventTimeDelayChanged(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            SearchTextBox searchTextBox = o as SearchTextBox;
            if(searchTextBox != null)
            {
                searchTextBox.searchEventDelayTimer.Interval = ((Duration)e.NewValue).TimeSpan;
                searchTextBox.searchEventDelayTimer.Stop();
            }
        }

        /*
        * FUNCTION : OnApplyTemplate
        * DESCRIPTION : This function apply the template to search icon border
        * PARAMETERS : no parameters
        * RETURNS : void
        */
        protected override void OnTextChanged(TextChangedEventArgs e)
        {
            base.OnTextChanged(e);
            HasText = Text.Length != 0;

            if(SearchMode == SearchMode.Instant)
            {
                searchEventDelayTimer.Stop();
                searchEventDelayTimer.Start();
            }
        }


        /*
       * FUNCTION : OnApplyTemplate
       * DESCRIPTION : This function apply the template to search icon border
       * PARAMETERS : no parameters
       * RETURNS : void
       */
        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            Border iconBorder = GetTemplateChild("PART_SearchIconBorder") as Border;
            if(iconBorder !=null)
            {
                iconBorder.MouseLeftButtonDown += new System.Windows.Input.MouseButtonEventHandler(IconBorder_MouseLeftButtonDown);
                iconBorder.MouseLeftButtonUp += new System.Windows.Input.MouseButtonEventHandler(IconBorder_MouseLeftButtonUp);
                iconBorder.MouseLeave += new System.Windows.Input.MouseEventHandler(IconBorder_MouseLeave);
            }
        }

        /*
       * FUNCTION : IconBorder_MouseLeftButtonDown
       * DESCRIPTION : This function gets called when mouse left button is up from icon border
       * PARAMETERS : object obj: button control
       *              MouseButtonEventArgs e: it contains state information and event data associated with mouse event
       * RETURNS : void
       */
        private void IconBorder_MouseLeftButtonDown(object obj, MouseButtonEventArgs e)
        {
            IsMouseLeftButtonDown = true;
        }

        /*
        * FUNCTION : IconBorder_MouseLeftButtonUp
        * DESCRIPTION : This function gets called when mouse left button is up from icon border
        * PARAMETERS : object obj: button control
        *              MouseButtonEventArgs e: it contains state information and event data associated with mouse event
        * RETURNS : void
        */
        private void IconBorder_MouseLeftButtonUp(object obj, MouseButtonEventArgs e)
        {
            if (!IsMouseLeftButtonDown) return;
            if(HasText && SearchMode == SearchMode.Instant)
            {
                this.Text = "";
            }

            if (HasText && SearchMode == SearchMode.Delayed)
            {
                RaiseSearchEvent();
            }
        }

        /*
        * FUNCTION : IconBorder_MouseLeave
        * DESCRIPTION : This function gets called when mouse is away from icon border
        * PARAMETERS : object obj: button control
        *              MouseEventArgs e: it contains state information and event data associated with mouse event
        * RETURNS : void
        */
        private void IconBorder_MouseLeave(object obj, MouseEventArgs e)
        {
            IsMouseLeftButtonDown = false;
        }

        /*
        * FUNCTION : OnKeyDown
        * DESCRIPTION : This function gets called when the key button is pressed
        * PARAMETERS : KeyEventArgs e: it contains state information and event data associated with key event
        * RETURNS : void
        */
        protected override void OnKeyDown(KeyEventArgs e)
        {
            if(e.Key == Key.Escape && SearchMode == SearchMode.Instant)
            {
                this.Text = "";
            }
            else if ((e.Key == Key.Return || e.Key == Key.Enter) && SearchMode == SearchMode.Delayed)
            {
                RaiseSearchEvent();
            }
            else
            {
                base.OnKeyDown(e);
            }
        }

        /*
        * FUNCTION : RaiseSearchEvent
        * DESCRIPTION : This event is for raising search event
        * PARAMETERS : no parameters
        * RETURNS : void
        */
        private void RaiseSearchEvent()
        {
            RoutedEventArgs args = new RoutedEventArgs(SearchEvent);
            RaiseEvent(args);
        }

        public Duration SearchEventTimeDelay
        {
            get { return (Duration)GetValue(SearchEventTimeDelayProperty); }
            set { SetValue(SearchEventTimeDelayProperty, value); }
        }

        public bool IsMouseLeftButtonDown
        {
            get { return (bool)GetValue(IsMouseLeftButtonDownProperty); }
            private set { SetValue(IsMouseLeftButtonDownPropertyKey, value); }
        }

        public event RoutedEventHandler Search
        {
            add { AddHandler(SearchEvent, value); }
            remove { RemoveHandler(SearchEvent, value); }
        }


        public string LabelText
        {
            get { return (string)GetValue(LabelTextProperty); }
            set { SetValue(LabelTextProperty, value); }
        }

        public Brush LabelTextColor
        {
            get { return (Brush)GetValue(LabelTextColorProperty); }
            set { SetValue(LabelTextColorProperty, value); }
        }

        public SearchMode SearchMode
        {
            get { return (SearchMode)GetValue(SearchModeProperty); }
            set { SetValue(SearchModeProperty, value); }
        }

        public bool HasText
        {
            get { return (bool)GetValue(HasTextProperty); }
            private set { SetValue(HasTextPropertyKey, value); }
        }
    }
}

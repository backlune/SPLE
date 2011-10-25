//-----------------------------------------------------------------------
// <copyright file="DragDockPanel.cs" company="Microsoft Corporation copyright 2008.">
// (c) 2008 Microsoft Corporation. All rights reserved.
// This source is subject to the Microsoft Public License.
// See http://www.microsoft.com/resources/sharedsource/licensingbasics/sharedsourcelicenses.mspx.
// </copyright>
// <date>15-Sep-2008</date>
// <author>Martin Grayson</author>
// <summary>A draggable, dockable, expandable panel class.</summary>
//-----------------------------------------------------------------------
namespace Blacklight.Controls
{
    using System;
    using System.Net;
    using System.Windows;
    using System.Windows.Controls;
    using System.Windows.Documents;
    using System.Windows.Ink;
    using System.Windows.Input;
    using System.Windows.Media;
    using System.Windows.Media.Animation;
    using System.Windows.Shapes;
    using System.Windows.Controls.Primitives;
    using System.Diagnostics;

    /// <summary>
    /// A draggable, dockable, expandable panel class.
    /// </summary>
    public class DragDockPanel : DraggablePanel
    {
        /// <summary>
        /// The template part name for the maxmize toggle button.
        /// </summary>
        private const string ElementMaximizeToggleButton = "MaximizeToggleButton";

        #region Private members
        /// <summary>
        /// Ignore the last uncheck event flag.
        /// </summary>
        private bool ignoreUnCheckedEvent = false;

        /// <summary>
        /// Panel maximised flag.
        /// </summary>
        private PanelState panelState = PanelState.Restored;

        /// <summary>
        /// Stores the panel index.
        /// </summary>
        private int panelIndex = 0;
        #endregion
        
        /// <summary>
        /// Drag dock panel constructor.
        /// </summary>
        public DragDockPanel()
        {
            this.DefaultStyleKey = typeof(DragDockPanel);
        }

        #region Events
        /// <summary>
        /// The maxmised event.
        /// </summary>
        public event EventHandler Maximized;

        /// <summary>
        /// The restored event.
        /// </summary>
        public event EventHandler Restored;

        /// <summary>
        /// The minimized event.
        /// </summary>
        public event EventHandler Minimized;
        #endregion

        #region Public members
        /// <summary>
        /// Gets or sets the calculated panel index.
        /// </summary>
        public int PanelIndex
        {
            get { return this.panelIndex; }
            set { this.panelIndex = value; }
        }

        /// <summary>
        /// Gets or sets a value indicating whether or not the panel is maximised (and updates the toggle button UI)
        /// </summary>
        [System.ComponentModel.Category("Panel Properties"), System.ComponentModel.Description("Sets whether the panel is maximised.")]
        public PanelState PanelState
        {
            get 
            { 
                return this.panelState; 
            }

            set
            {
                this.panelState = value;
                ToggleButton maximizeToggle = this.GetTemplateChild(DragDockPanel.ElementMaximizeToggleButton) as ToggleButton;

                if (this.panelState == PanelState.Restored)
                {
                    //this.ignoreUnCheckedEvent = true;
                    if (maximizeToggle != null)
                    {
                        maximizeToggle.IsChecked = false;
                    }
                }
                else if (this.panelState == PanelState.Maximized)
                {
                    if (maximizeToggle != null)
                    {
                        maximizeToggle.IsChecked = true;
                    }
                }
                else if (this.panelState == PanelState.Minimized)
                {
                    if (this.Minimized != null)
                    {
                        this.Minimized(this, EventArgs.Empty);
                    }
                }
            }
        }
        #endregion

        /// <summary>
        /// Gets called once the template is applied so we can fish out the bits
        /// </summary>
        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();

            ToggleButton maximizeToggle =
                this.GetTemplateChild(DragDockPanel.ElementMaximizeToggleButton) as ToggleButton;

            if (maximizeToggle != null)
            {
                maximizeToggle.Checked +=
                    new RoutedEventHandler(this.MaximizeToggle_Checked);
                maximizeToggle.Unchecked +=
                    new RoutedEventHandler(this.MaximizeToggle_Unchecked);

                if (this.PanelState == PanelState.Restored)
                {
                    //this.ignoreUnCheckedEvent = true; 
                    maximizeToggle.IsChecked = false;
                }
                else if (this.PanelState == PanelState.Maximized)
                {
                    maximizeToggle.IsChecked = true;
                }
            }
        }

        /// <summary>
        /// Override for updating the panel position.
        /// </summary>
        /// <param name="pos">The new position.</param>
        public override void UpdatePosition(Point pos)
        {
            Canvas.SetLeft(this, pos.X);
            Canvas.SetTop(this, pos.Y);
        }

        #region Maximize events
        /// <summary>
        /// Fires the minimised event.
        /// </summary>
        /// <param name="sender">The maximised toggle.</param>
        /// <param name="e">Routed event args.</param>
        private void MaximizeToggle_Unchecked(object sender, RoutedEventArgs e)
        {
            if (!this.ignoreUnCheckedEvent)
            {
                this.PanelState = PanelState.Restored;

                // Fire the panel minimized event
                if (this.Restored != null)
                {
                    this.Restored(this, e);
                }
            }
            else
            {
                this.ignoreUnCheckedEvent = false;
            }
        }

        /// <summary>
        /// Fires the maximised event.
        /// </summary>
        /// <param name="sender">The maximised toggle.</param>
        /// <param name="e">Routed event args.</param>
        private void MaximizeToggle_Checked(object sender, RoutedEventArgs e)
        {
            // Bring the panel to the front
            Canvas.SetZIndex(this, CurrentZIndex++);

            this.ignoreUnCheckedEvent = false;

            // Fire the panel maximized event
            if (this.Maximized != null)
            {
                this.Maximized(this, e);
            }
        }
        #endregion
    }
}

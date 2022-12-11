using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace Barbaros_İDA_Yer_İstasyonu_Yazılımı
{
    public partial class Form1 : Form
    {
        private Button currentBtn;
        private Panel LeftBorder;
        private Form CurrentChildForm;
        public Form1()
        {
            InitializeComponent();
            LeftBorder=new Panel();
            LeftBorder.Size = new Size(7, 60);
            Panel_Menu.Controls.Add(LeftBorder);
            this.ControlBox = false;
            this.DoubleBuffered = true;
            this.WindowState=FormWindowState.Maximized;
        }
       
        private struct RGBColors
        {
            public static Color color1 = Color.FromArgb(172, 126, 241);
            public static Color color2 = Color.FromArgb(249, 118, 176);
            public static Color color3 = Color.FromArgb(253, 138, 114);
            public static Color color4 = Color.FromArgb( 95,  77, 221);
            public static Color color5 = Color.FromArgb(249,  88, 155);
            public static Color color6 = Color.FromArgb( 24, 161, 251);
        }
        private struct ThemeColor
        {
            public static Color buttoncolor = Color.FromArgb(24, 30, 54);
            public static Color MenuPanelColor = Color.FromArgb(24, 30, 54);
            public static Color buttonforecolor = Color.FromArgb(253, 138, 114);
            public static Color MainPanelColor = Color.FromArgb(95, 77, 221);
            public static Color SubPanelColor = Color.FromArgb(249, 88, 155);
            public static Color BackgroundPanel = Color.FromArgb(24, 161, 251);
        }
        private void ActivateButton(object senderBtn, Color color)
        {
            if(senderBtn != null)
            {
                DisableButton();
                currentBtn = (Button)senderBtn;
                currentBtn.BackColor = ThemeColor.buttoncolor;
                currentBtn.ForeColor = color;
                currentBtn.TextAlign = ContentAlignment.MiddleRight;
                
                LeftBorder.BackColor = color;
                LeftBorder.Location=new Point(0,currentBtn.Location.Y);
                LeftBorder.Visible = true;
                LeftBorder.BringToFront();
                button_menu_pannel.Location = new Point(17, 25);
            }
        }
        private void DisableButton()
        {
            if(currentBtn != null)
            {
                currentBtn.BackColor = Color.FromArgb(24, 30, 54);
                currentBtn.ForeColor = Color.FromArgb(150, 30, 80);
                currentBtn.TextAlign = ContentAlignment.MiddleCenter;
            }
        }
        private void OpenChildForm(Form childform)
        {
            if(CurrentChildForm != null)
            {
                CurrentChildForm.Close();
            }
            CurrentChildForm = childform;
            childform.TopLevel = false;
            childform.FormBorderStyle= FormBorderStyle.None;
            childform.Dock = DockStyle.Fill;
            panel_Desktop.Controls.Add(childform);
            childform.BringToFront();
            childform.Show();
            Panel_Menu.Visible = false;

        }
        private void Veri_Panel_Button_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color1);
            OpenChildForm(new DataPanel());
            panel_Desktop.Dock = DockStyle.Fill;
            
        }

        private void Rota_Belirleme_Button_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color2);
        }
        private void button_manuelmod_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color3);
        }
        private void Ayarlar_Button_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color4);
        }

        private void Gelistirici_Ekip_Button_Click(object sender, EventArgs e)
        {
            ActivateButton(sender, RGBColors.color5);
        }
        //Drag Form
        [DllImport("user32.DLL", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.DLL", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hWnd, int wMsg, int wParam, int lParam);
        private void panelTitleBar_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void button_menu_pannel_Click(object sender, EventArgs e)
        {
            if(Panel_Menu.Visible == true)
            {
                Panel_Menu.Visible = false;
                button_menu_pannel.Location=new Point(17, 25);
                Panel_Menu.Dock = DockStyle.None;
            }
            else
            {
                Panel_Menu.Visible = true;
                button_menu_pannel.Location = new Point(241, 25);
                Panel_Menu.Dock = DockStyle.Left;
            }
            
        }

        private void Title_Click(object sender, EventArgs e)
        {

        }


    }
}

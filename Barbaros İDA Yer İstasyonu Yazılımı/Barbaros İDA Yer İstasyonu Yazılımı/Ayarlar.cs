using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Barbaros_İDA_Yer_İstasyonu_Yazılımı
{
    public partial class Ayarlar : Form
    {
        public Ayarlar()
        {
            InitializeComponent();
            comboBox_dil.SelectedIndex = 0;
            comboBox_tema.SelectedIndex = 0;
            //comboBox_com.SelectedIndex = 0;
            comboBox_Baud.SelectedIndex = 1;
            comboBox_camerag.SelectedIndex = 0;
            comboBox_alıcımod.SelectedIndex = 0;
        }

        private void comboBox_alıcımod_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(comboBox_alıcımod.SelectedIndex == 1)
            {
                panel_alıcı.Visible = true;
            }
            if (comboBox_alıcımod.SelectedIndex == 0)
            {
                panel_alıcı.Visible = false;
            }
        }
    }
}

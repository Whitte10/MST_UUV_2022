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
    public partial class DataPanel : Form
    {
        public DataPanel()
        {
            InitializeComponent();
            gMapControl1.MapProvider = GMap.NET.MapProviders.GoogleMapProvider.Instance;
            gMapControl1.Position = new GMap.NET.PointLatLng(41.0110,28.5657);
        }

        private void DataPanel_Load(object sender, EventArgs e)
        {

        }

        private void chart_Temp_Load(object sender, EventArgs e)
        {

        }
    }
}

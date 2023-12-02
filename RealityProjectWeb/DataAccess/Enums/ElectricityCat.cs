using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealityProject.DataAccess.Enums
{
    public enum ElectricityCat
    {
        A, B, C, D, E, F, G
    }

    //A – mimořádně úsporná(≤ 50 [43] kWh/m²),
    //B – velmi úsporná(≤ 97 [82] kWh/m²),
    //C – úsporná(≤ 142 [120] kWh/m²),
    //D – méně úsporná(≤ 191 [162] kWh/m²),
    //E – nehospodárná(≤ 246 [205] kWh/m²),
    //F – velmi nehospodárná(≤ 286 [245] kWh/m²),
    //G – mimořádně nehospodárná(> 286 [245] kWh/m²).
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Shop_watch.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Don_hang
    {
        public int Id_don_hang { get; set; }
        public Nullable<int> Id_san_pham { get; set; }
        public Nullable<int> Id_tai_khoan_Kh { get; set; }
        public Nullable<decimal> Thanh_tien { get; set; }
        public Nullable<byte> Trang_thai { get; set; }
        public Nullable<int> So_luong { get; set; }
        public Nullable<System.DateTime> Ngay_tao { get; set; }
        public Nullable<int> Id_nguoi_cap_nhat { get; set; }
        public Nullable<System.DateTime> Ngay_cap_nhat { get; set; }
        public string Chu_thich { get; set; }
    
        public virtual San_pham San_pham { get; set; }
    }
}

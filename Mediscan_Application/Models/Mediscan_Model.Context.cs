﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Mediscan_Application.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Mediscan_ModelContainer : DbContext
    {
        public Mediscan_ModelContainer()
            : base("name=Mediscan_ModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Ùser> Ùser { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Appointment> Appointments { get; set; }
        public virtual DbSet<Centre> Centres { get; set; }
    }
}
using RealityProject.DataAccess.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;
using RealityProject.DataAccess.DataModels;

namespace RealityProject.DataAccess.Repository
{
    public abstract class Repo<T> where T : class, ITable
    {
        public ApplicationDbContext Context;
        internal DbSet<T> DbSet { get; set; }

        protected Repo(ApplicationDbContext data)
        {
            Context = data;
            this.DbSet = data.Set<T>();
        }

       
        public T GetFirstOrDefault(Expression<Func<T, bool>> filterExpression, string? include = null)
        {
            IQueryable<T> query = DbSet;
            if (include != null)
            {
                foreach (var inc in include.Split(',', StringSplitOptions.RemoveEmptyEntries))
                {
                    query = query.Include(inc);
                }
            }

            query = query.Where(filterExpression);

            return query.First();
        }

        public IEnumerable<T> GetAll(string? include = null)
        {
            IQueryable<T> query = DbSet;
            if (include != null)
            {
                foreach (var inc in include.Split(',', StringSplitOptions.RemoveEmptyEntries))
                {
                    query = query.Include(inc);
                }
            }

            return query.ToList();
        }

        public void Add(T item)
        {
            if (item.Id == Guid.Empty)
            {
                item.Id = new Guid();
            }
            Context.Add(item);
        }

        public void Remove(T item)
        {
            Context.Remove(item);
        }

        public void Update(T item)
        {
            Context.Update(item);
        }

            

        public void RemoveRange(IEnumerable<T> items)
        {
            Context.RemoveRange(items);
        }
    }
}

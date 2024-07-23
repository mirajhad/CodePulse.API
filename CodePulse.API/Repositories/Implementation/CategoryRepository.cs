using CodePulse.API.Data;
using CodePulse.API.Models.Domain;
using CodePulse.API.Repositories.Interface;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodePulse.API.Repositories.Implementation
{
    public class CategoryRepository : ICategoryRepository
    {
        private readonly ApplicationDbContext _dbContext;

        public CategoryRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<Category> CreateAsync(Category category)
        {
            await _dbContext.Categories.AddAsync(category);
            await _dbContext.SaveChangesAsync();
            return category;
        }

        public async Task<Category?> DeleteAsync(Guid id)
        {
            var existingCategory = await _dbContext.Categories.FirstOrDefaultAsync(c => c.Id == id);

            if (existingCategory is null)
            {
                return null;
            }
            _dbContext.Categories.Remove(existingCategory);
            await _dbContext.SaveChangesAsync();
            return existingCategory;
        }

        public async Task<IEnumerable<Category>> GetAllAsync(string? query = null)
        {
            //Query
            var categories = _dbContext.Categories.AsQueryable();

            //Filtering
            if (string.IsNullOrEmpty(query) == false)
            {
                categories = categories.Where(x=>x.Name.Contains(query));
            }

            //Sorting


            //Pagination


            return await categories.ToListAsync();
           // return await _dbContext.Categories.ToListAsync();
        }

        public async Task<Category?> GetById(Guid id)
        {
           return await _dbContext.Categories.FirstOrDefaultAsync(c => c.Id == id);

        }

        public async Task<Category?> UpdateAsync(Category category)
        {
            var existingCategory = await _dbContext.Categories.FirstOrDefaultAsync(x => x.Id == category.Id);
            if (existingCategory != null) 
            {
                _dbContext.Entry(existingCategory).CurrentValues.SetValues(category);
                await _dbContext.SaveChangesAsync();
                return category;
            }
            return null;
        }
    }
}

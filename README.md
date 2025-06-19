# Rails Blog App

A simple blog application built with Ruby on Rails as part of The Odin Project curriculum. This project demonstrates fundamental Rails concepts including the MVC pattern, CRUD operations, form handling, and data validation.

## Features

- **Article Management**: Create, read, update, and delete blog articles
- **Form Validation**: Client and server-side validation for article content
- **Responsive Navigation**: Easy navigation between articles and forms
- **Error Handling**: User-friendly error messages for invalid submissions
- **Clean UI**: Basic styling for a pleasant user experience

## Technologies Used

- **Ruby**: 3.4.4
- **Rails**: 8.0.2
- **Database**: SQLite3 (development)
- **Frontend**: HTML, ERB templates, CSS
- **Version Control**: Git

## Installation

### Prerequisites

Make sure you have the following installed:
- Ruby 3.0 or higher
- Rails 7.0 or higher
- SQLite3
- Git

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/NatashaJWangui/railsblog.git
   cd blog
   ```

2. **Install dependencies**
   ```bash
   bundle install
   ```

3. **Set up the database**
   ```bash
   rails db:migrate
   ```

4. **Start the server**
   ```bash
   rails server
   ```

5. **Visit the application**
   Open your browser and navigate to `http://localhost:3000`

## Usage

### Creating Articles
1. Navigate to the home page
2. Click "New Article"
3. Fill in the title and body (body must be at least 10 characters)
4. Click "Create Article"

### Viewing Articles
- All articles are listed on the home page
- Click on any article title to view the full content

### Editing Articles
1. Go to an article's show page
2. Click "Edit"
3. Make your changes
4. Click "Update Article"

### Deleting Articles
1. Go to an article's show page
2. Click "Destroy"
3. Confirm the deletion when prompted

## Project Structure

```
blog/
├── app/
│   ├── controllers/
│   │   └── articles_controller.rb    # Handles all article-related requests
│   ├── models/
│   │   └── article.rb                # Article model with validations
│   └── views/
│       └── articles/
│           ├── index.html.erb        # Articles listing page
│           ├── show.html.erb         # Individual article page
│           ├── new.html.erb          # New article form
│           ├── edit.html.erb         # Edit article form
│           └── _form.html.erb        # Shared form partial
├── config/
│   └── routes.rb                     # Application routes
├── db/
│   └── migrate/                      # Database migrations
└── README.md
```

## Key Learning Concepts

This project covers several fundamental Rails concepts:

### MVC Architecture
- **Models**: Data logic and validations (`Article` model)
- **Views**: User interface templates (ERB files)
- **Controllers**: Request handling and business logic (`ArticlesController`)

### RESTful Routes
The application uses Rails' resourceful routing:
- `GET /articles` - List all articles (index)
- `GET /articles/:id` - Show specific article (show)
- `GET /articles/new` - New article form (new)
- `POST /articles` - Create new article (create)
- `GET /articles/:id/edit` - Edit article form (edit)
- `PATCH/PUT /articles/:id` - Update article (update)
- `DELETE /articles/:id` - Delete article (destroy)

### Data Validation
- Title presence validation
- Body presence and minimum length validation
- Error handling and user feedback

### Rails Conventions
- Strong parameters for security
- Before actions for DRY code
- Partials for reusable view components
- Flash messages for user feedback

## Database Schema

### Articles Table
| Column | Type | Constraints |
|--------|------|-------------|
| id | Integer | Primary Key, Auto-increment |
| title | String | Required |
| body | Text | Required, minimum 10 characters |
| created_at | DateTime | Auto-generated |
| updated_at | DateTime | Auto-generated |

## Testing the Application

### Manual Testing Checklist
- [ ] Can create a new article with valid data
- [ ] Cannot create article with empty title
- [ ] Cannot create article with body less than 10 characters
- [ ] Can view all articles on index page
- [ ] Can view individual article details
- [ ] Can edit existing articles
- [ ] Can delete articles with confirmation
- [ ] Navigation links work correctly
- [ ] Error messages display properly

### Running Tests
```bash
# Run the test suite (if tests are added later)
rails test
```

## Deployment

### Heroku Deployment (Example)
1. **Install Heroku CLI and login**
   ```bash
   heroku login
   ```

2. **Create Heroku app**
   ```bash
   heroku create your-blog-app-name
   ```

3. **Add PostgreSQL addon**
   ```bash
   heroku addons:create heroku-postgresql:mini
   ```

4. **Update Gemfile for production**
   ```ruby
   # Add to Gemfile
   group :production do
     gem 'pg', '~> 1.1'
   end
   ```

5. **Deploy**
   ```bash
   git add .
   git commit -m "Prepare for production"
   git push heroku main
   heroku run rails db:migrate
   ```

## Contributing

This is a learning project, but suggestions and improvements are welcome!

1. Fork the project
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Common Issues & Troubleshooting

### Server Won't Start
- Check if another Rails server is running on port 3000
- Run `rails server -p 3001` to use a different port

### Database Issues
- Run `rails db:reset` to reset the database
- Check if SQLite3 is properly installed

### Missing Routes
- Run `rails routes` to see all available routes
- Check `config/routes.rb` for proper route definitions

### Form Errors
- Ensure strong parameters are properly configured
- Check model validations in `app/models/article.rb`

## Resources

- [Ruby on Rails Guides](https://guides.rubyonrails.org/)
- [The Odin Project](https://www.theodinproject.com/)
- [Rails API Documentation](https://api.rubyonrails.org/)

## License

This project is open source and for educational purposes.

## Acknowledgments

- The Odin Project for the excellent curriculum
- Ruby on Rails community for the comprehensive documentation
- All the developers who contribute to making Rails awesome

---

**Project completed as part of The Odin Project - Ruby on Rails Course**

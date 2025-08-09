# CrowdFunding Platform

A Django-based crowdfunding platform that allows users to create, manage, and donate to projects. This project was developed as an ITI graduation project.

## 🚀 Features

### Core Functionality
- **Project Management**: Create, edit, and delete crowdfunding projects
- **User Authentication**: Complete user registration and login system
- **Donation System**: Users can donate to projects with validation
- **Project Details**: Detailed view of projects with progress tracking
- **User Profiles**: Extended user profiles with city and phone information
- **Image Upload**: Support for project and profile images

### Key Features
- **Real-time Progress Tracking**: Shows donation progress and remaining targets
- **Project Validation**: Ensures end dates are after start dates
- **Donation Validation**: Prevents over-donation and negative amounts
- **Responsive Design**: Bootstrap 4 integration for modern UI
- **Admin Interface**: Django admin panel for project management

## 🏗️ Architecture

### Technology Stack
- **Backend**: Django 5.2.4
- **Database**: PostgreSQL
- **Frontend**: HTML, CSS, Bootstrap 4
- **Image Handling**: Pillow
- **Containerization**: Docker & Docker Compose

### Project Structure
```
├── project/                 # Django project settings
│   ├── settings.py         # Main configuration
│   ├── urls.py            # Main URL routing
│   └── wsgi.py            # WSGI configuration
├── core/                   # Main application
│   ├── models.py          # Project and Donation models
│   ├── views.py           # Core business logic
│   ├── forms.py           # Form definitions
│   ├── urls.py            # Core URL patterns
│   └── templates/         # HTML templates
├── account/               # User management app
│   ├── models.py          # User Profile model
│   ├── views.py           # Authentication views
│   ├── forms.py           # User forms
│   └── templates/         # Auth templates
├── static/                # Static files (CSS, JS)
├── media/                 # User uploaded files
├── db_data/              # PostgreSQL data
├── requirements.txt       # Python dependencies
├── docker-compose.yml    # Docker services
├── Dockerfile           # Docker configuration
└── manage.py            # Django management script
```

### Database Models

#### Project Model
- `owner`: Foreign key to User
- `title`: Project title (max 200 chars)
- `details`: Project description
- `total_target`: Funding goal (decimal)
- `start_time` & `end_time`: Campaign duration
- `image`: Project image
- `created_at`: Auto timestamp

#### Donation Model
- `project`: Foreign key to Project
- `user`: Foreign key to User
- `amount`: Donation amount (decimal)
- `created_at`: Auto timestamp

#### Profile Model (Extended User)
- `user`: OneToOneField to User
- `city`: Foreign key to City
- `phone_number`: Contact information
- `image`: Profile picture

## 🛠️ Installation & Setup

### Prerequisites
- Python 3.12+
- PostgreSQL
- Docker & Docker Compose (optional)

### Method 1: Local Development

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd CrowdFundingApp
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   # On Windows
   venv\Scripts\activate
   # On macOS/Linux
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set up PostgreSQL database**
   - Create a PostgreSQL database named `ITI_graduationProject`
   - Update database credentials in `project/settings.py` if needed

5. **Run migrations**
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Create superuser (optional)**
   ```bash
   python manage.py createsuperuser
   ```

7. **Run the development server**
   ```bash
   python manage.py runserver
   ```

8. **Access the application**
   - Main site: http://localhost:8000
   - Admin panel: http://localhost:8000/admin

### Method 2: Docker Deployment

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd CrowdFundingApp
   ```

2. **Build and run with Docker Compose**
   ```bash
   docker-compose up --build
   ```

3. **Run migrations (first time only)**
   ```bash
   docker-compose exec backend python manage.py makemigrations
   docker-compose exec backend python manage.py migrate
   ```

4. **Create superuser (optional)**
   ```bash
   docker-compose exec backend python manage.py createsuperuser
   ```

5. **Access the application**
   - Main site: http://localhost:8000
   - Admin panel: http://localhost:8000/admin

## 🚀 Usage Guide

### For Project Creators

1. **Register/Login**: Create an account or log in
2. **Create Project**: 
   - Navigate to "My Projects" → "Create New Project"
   - Fill in project details (title, description, target amount, dates, image)
   - Set realistic funding goals and timelines
3. **Manage Projects**:
   - Edit project details from "My Projects"
   - Delete projects if needed
   - Monitor donation progress

### For Donors

1. **Browse Projects**: View all available projects on the homepage
2. **Project Details**: Click on any project to see detailed information
3. **Make Donation**:
   - Click "Donate" on any project
   - Enter donation amount
   - Confirm donation
4. **Track Progress**: See real-time funding progress

### Key Features

- **Project Validation**: System ensures end dates are after start dates
- **Donation Limits**: Cannot donate more than remaining target
- **Progress Tracking**: Real-time updates on funding progress
- **User Profiles**: Extended profiles with city and contact information




## 🐳 Docker Configuration

### Services
- **djangoserver**: Django application (port 8000)
- **db**: PostgreSQL database (port 5432)

### Volumes
- `./db_data`: PostgreSQL data persistence
- `.:/app`: Application code mounting

## 📁 File Structure Details

### Templates
- `core/templates/core/`: Main application templates
- `account/templates/registration/`: Authentication templates
- `account/templates/account/`: User profile templates

### Static Files
- CSS, JavaScript, and other static assets
- Bootstrap 4 integration

### Media Files
- User uploaded images (project pictures, profile pictures)
- Automatically organized in subdirectories

## 🔒 Security Features

- CSRF protection enabled
- Password validation
- User authentication required for sensitive operations
- File upload validation
- SQL injection protection (Django ORM)

## 🧪 Testing

Run tests with:
```bash
python manage.py test
```

## 📝 API Endpoints

### Main URLs
- `/`: Homepage
- `/projects/`: All projects listing
- `/project/<id>/`: Project details
- `/my-projects/`: User's projects
- `/create-project/`: Create new project
- `/edit-project/<id>/`: Edit project
- `/delete-project/<id>/`: Delete project
- `/donate/<id>/`: Donate to project

### Authentication URLs
- `/account/login/`: Login
- `/account/signup/`: Registration
- `/account/logout/`: Logout
- `/account/profile/`: User profile

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is developed as an ITI graduation project.

## 👥 Team

This project was developed as part of the ITI graduation requirements.



# Konnector.ai – School Management System (RoR Assignment)

## Overview
This application is a role-based School Management System built using Ruby on Rails.
It allows Admins, SchoolAdmins, and Students to manage schools, courses, batches, and enrollments with proper authorization and workflow.

The system supports:
- Role-based access control
- Enrollment approval flow
- Visibility restrictions
- Comprehensive test coverage
- Optional API support

---

## Tech Stack
- Ruby: 3.x
- Rails: 7.x
- Database: PostgreSQL
- Authentication: Devise
- Authorization: Pundit
- Testing: RSpec, FactoryBot

---

## User Roles & Responsibilities

### 👤 Admin
- Create Schools
- Create School Admin users
- Full system access

### 🏫 School Admin
- Update school information
- Create Courses
- Create Batches
- Approve or Reject student enrollment requests
- Manage only their assigned school

### 🎓 Student
- View available batches
- Request enrollment into a batch
- View classmates and their progress (same batch only)

---

## Enrollment Workflow
1. Student requests enrollment into a batch
2. Enrollment is created with `pending` status
3. School Admin reviews the request
4. Enrollment is approved or rejected
5. Approved students become part of the batch

---

## Database Models
- User (roles: admin, school_admin, student)
- School
- Course
- Batch
- Enrollment (status: pending, approved, rejected)

---

## Setup Instructions

### Clone Repository
```bash
git clone <github-repo-link>
cd konnector_lms
```

### Install Dependencies
```bash
bundle install
```

### Setup Database
```bash
rails db:create
rails db:migrate
```

### Run Application
```bash
rails server
```

---

## Running Tests (RSpec)
```bash
bundle exec rspec
```

### Test Coverage Includes
- Model validations and associations
- Enrollment approval workflow
- Role-based authorization
- Access restrictions for Admin, SchoolAdmin, and Student

---

## API Support (Good to Have)
```http
POST /api/v1/enrollments
GET /api/v1/batches/:id/students
```

---

## Assumptions
- A user has only one role
- Students can enroll in multiple batches
- Progress tracking is basic/dummy for demonstration
- SchoolAdmins can manage only their assigned school

---

## Submission
- The project is submitted via a GitHub repository link
- The repository contains:
  - Complete Rails application
  - RSpec test cases
  - This README for verification

---

## Author
Komal Arora  
Ruby on Rails Backend Engineer

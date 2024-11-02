# Lambol Mining Data Centralization System

A comprehensive web-based system for centralizing and managing mining operational data, including weighing records, accounting information, and laboratory analysis results for Lambol Mining Company.

## 🏗️ Project Architecture

This project follows a monorepo structure with screaming architecture pattern:

```
lambol-system/
├── BACKEND/
│   ├── Auth/
│   ├── WeighingManagement/
│   ├── Laboratory/
│   ├── Accounting/
│   └── Common/
├── FRONTEND/
│   ├── Auth/
│   ├── WeighingDashboard/
│   ├── LaboratoryAnalysis/
│   ├── AccountingReports/
│   └── SharedComponents/
└── DATABASE/
    ├── Migrations/
    ├── Scripts/
    └── Schema/
```

## 🚀 Features

- **Centralized Data Management**
  - Weighing records integration
  - Laboratory analysis data
  - Accounting information
  - Historical data tracking

- **Real-time Data Processing**
  - Automated data validation
  - Real-time updates
  - Data synchronization

- **Reporting & Analytics**
  - Custom report generation
  - Data visualization
  - Export capabilities

## 🛠️ Tech Stack

### Backend
- Node.js
- Express.js
- TypeScript
- PostgreSQL
- Redis for caching

### Frontend
- React
- TypeScript
- Tailwind CSS
- Redux Toolkit
- React Query

### Database
- PostgreSQL
- TimescaleDB for time-series data

## 📋 Prerequisites

- Node.js >= 18.x
- PostgreSQL >= 14.x
- Redis >= 6.x
- npm >= 9.x

## 🔧 Installation

1. Clone the repository:
```bash
git clone https://github.com/lambol-mining/data-centralization.git
cd data-centralization
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env
```

4. Initialize the database:
```bash
cd DATABASE
npm run migrate
```

5. Start the development servers:
```bash
# Start backend
cd BACKEND
npm run dev

# Start frontend
cd FRONTEND
npm run dev
```

## 🏃‍♂️ Running the Tests

```bash
# Run all tests
npm run test

# Run backend tests
cd BACKEND
npm run test

# Run frontend tests
cd FRONTEND
npm run test
```

## 🔄 Database Migrations

```bash
# Create a new migration
cd DATABASE
npm run migration:create

# Run migrations
npm run migration:up

# Rollback migrations
npm run migration:down
```

## 🌐 API Documentation

API documentation is available at `/api/docs` when running the development server. This includes:
- Authentication endpoints
- Weighing management APIs
- Laboratory data APIs
- Accounting integration endpoints

## 🔐 Environment Variables

Required environment variables:
```env
# Database
DB_HOST=localhost
DB_PORT=5432
DB_NAME=lambol_db
DB_USER=postgres
DB_PASSWORD=your_password

# Backend
PORT=3000
NODE_ENV=development
JWT_SECRET=your_jwt_secret

# Frontend
VITE_API_URL=http://localhost:3000
```

## 📚 Project Structure Details

### Backend Structure
```
BACKEND/
├── Auth/
│   ├── controllers/
│   ├── services/
│   ├── models/
│   └── routes/
├── WeighingManagement/
│   ├── controllers/
│   ├── services/
│   ├── models/
│   └── routes/
└── Common/
    ├── middleware/
    ├── utils/
    └── config/
```

### Frontend Structure
```
FRONTEND/
├── Auth/
│   ├── components/
│   ├── hooks/
│   └── services/
├── WeighingDashboard/
│   ├── components/
│   ├── hooks/
│   └── services/
└── SharedComponents/
    ├── UI/
    └── Layout/
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Team

- Backend Lead: [Name]
- Frontend Lead: [Name]
- Database Architect: [Name]
- Project Manager: [Name]

## 📞 Support

For support, email support@lambol.com or create an issue in the repository.

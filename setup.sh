#!/bin/bash

echo "🚀 Booting up skeleton generator for True Value Tracker..."

# 1. The Backend Engine (app/)
echo "📁 Creating Laravel Backend architecture..."
mkdir -p app/Models app/Http/Controllers app/Services
touch app/Models/User.php \
      app/Models/Portfolio.php \
      app/Models/Stock.php \
      app/Models/Transaction.php \
      app/Models/Dividend.php
touch app/Http/Controllers/DashboardController.php \
      app/Http/Controllers/PortfolioController.php \
      app/Http/Controllers/MarketDataController.php
touch app/Services/FinancialMathService.php \
      app/Services/StockApiService.php

# 2. The Database (database/)
echo "📁 Creating Database Migrations..."
mkdir -p database/migrations
touch database/migrations/0001_create_users_table.php \
      database/migrations/0002_create_portfolios_table.php \
      database/migrations/0003_create_stocks_table.php \
      database/migrations/0004_create_transactions_table.php \
      database/migrations/0005_create_dividends_table.php

# 3. The Routing (routes/)
echo "📁 Creating API and Web Routes..."
mkdir -p routes
touch routes/web.php routes/api.php

# 4. The Frontend Skin (resources/)
echo "📁 Creating React & Tailwind Frontend structure..."
mkdir -p resources/css resources/js/Pages resources/js/Components
touch resources/css/app.css \
      resources/js/app.jsx
touch resources/js/Pages/Dashboard.jsx \
      resources/js/Pages/PortfolioManager.jsx
touch resources/js/Components/DashboardGrid.jsx \
      resources/js/Components/StockCard.jsx \
      resources/js/Components/AddTransactionModal.jsx \
      resources/js/Components/Navbar.jsx

# 5. The Core Configuration (Root Level)
echo "📁 Creating Root Configurations..."
touch .env .gitignore composer.json package.json vite.config.js

echo "✅ All done! Project skeleton successfully created."

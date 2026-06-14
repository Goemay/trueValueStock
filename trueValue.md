Excellent choice. Building a "True Value" Dividend Tracker proves you understand both complex data handling and real-world financial logic.

Let's lay down the skeleton. We will break this into two parts: the **System Architecture** (how the technical pieces fit together) and the **Development Roadmap** (the exact order we will build them).

## The System Architecture

Before writing any code, we need to know what tools we are plugging together.

* **The Frontend (The Skin):** React.js (or Laravel Blade with Livewire) styled with **Tailwind CSS**. We need CSS Grid to create the clean, responsive "Stock Cards" you mentioned.
* **The Backend (The Brains):** **Laravel (PHP)** or **Node.js**. This will handle user authentication, store portfolios, and run the heavy financial calculations.
* **The Database (The Memory):** **MySQL** or **PostgreSQL**. You'll need tables for Users, Portfolios, Transactions (buys/sells), and a cached table for Stock Data so you don't hit API limits.
* **The Data Source (The Senses):** A financial API like **Alpha Vantage**, **Finnhub**, or **Yahoo Finance API**. This feeds your app the live prices and, crucially, the historical dividend payouts.

---

## The Development Roadmap

To avoid getting overwhelmed, we have to build this in strict order. If we try to build the visual dashboard before the data pipeline works, the project will stall out.

1. **Database Schema & Logic Setup:** Do not touch the frontend yet..
Create the foundational database tables: `users`, `portfolios`, `transactions` (tracking ticker, quantity, buy price, and date), and `dividends`. Set up the models and relationships in your backend.


2. **The API Data Pipeline:** Connecting to the outside world..
Write the backend service that takes a ticker symbol (e.g., "BBRI" or "AAPL") and fetches its current price, historical dividend data, and key metrics (like EPS - Earnings Per Share) from your chosen financial API.


3. **The Financial Math Engine:** The core value of the app..
Write the logic that calculates the **True ROI**.
*Total Return = (Current Price - Buy Price) + Total Dividends Collected.*
You will also write the algorithm that estimates the "Fair Value" using a basic Dividend Discount Model (DDM) or Price-to-Earnings ratio comparison.


4. **The Frontend Dashboard & Cards:** Making it look good..
Now you build the UI. Create the grid layout and design the individual "Stock Cards." Connect the frontend to your backend so the cards dynamically display the health scores, True ROI, and Fair Value estimates you calculated in Step 3.


5. **Deployment & Hosting:** Putting it on your .my.id domain..
Push the code to GitHub, set up a basic VPS (like DigitalOcean or a local Indonesian provider), configure the web server (Nginx), and point your personal domain to it.

# 👓 Optics Store Management - "Bottleneck Optics"

## 📄 Description

This project models the management of clients and glasses sales for an optics store named **"Bottleneck Optics"**.

It handles data related to suppliers, glasses, clients, and sales.

---

## 🏢 Suppliers

Each supplier record includes:
- Name
- Address:
  - Street
  - Number
  - Floor
  - Door
  - City
  - Postal code
  - Country
- Phone number
- Fax
- NIF (Tax Identification Number)

> 📌 A single supplier can provide multiple glasses brands, but each brand is associated with only one supplier.

---

## 👓 Glasses

Each pair of glasses includes the following information:
- Brand
- Graduation for each lens (left and right)
- Frame type:
  - Floating
  - Plastic
  - Metal
- Frame color
- Lens color (left and right)
- Price

---

## 🧑‍🤝‍🧑 Clients

The client database includes:
- Full name
- Postal address
- Phone number
- Email address
- Registration date
- Referrer (optional): another client who recommended the store

---

## 🧑‍💼 Sales

Sales records link each sold pair of glasses to:
- The client who purchased them
- The employee who completed the sale

---

## 🗄️ Database Management

- **Database system:** MySQL 8
- **GUI client:** DBeaver 25.09.3

### 🛠️ Connection Parameters

- **Host:** `localhost`
- **Port:** `3306` (default MySQL port)
- **User:** `your_user`
- **Password:** `your_password`
- **Database name:** `bottleneck_optics`

> 💡 Use DBeaver or any preferred SQL client to explore, manage, and query the database structure.

---

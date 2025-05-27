CREATE TABLE IF NOT EXISTS appraisals (
        id SERIAL PRIMARY KEY,
        employee_id VARCHAR(7) NOT NULL,
        employee_name VARCHAR(30) NOT NULL,
        position VARCHAR(30) NOT NULL,
        department VARCHAR(50) NOT NULL,
        appraisal_date DATE NOT NULL,
        rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
        strengths TEXT NOT NULL,
        improvements TEXT NOT NULL,
        comments TEXT,
        CONSTRAINT unique_employee_date UNIQUE (employee_id, appraisal_date)
      );


CREATE TABLE IF NOT EXISTS reviews (
        id SERIAL PRIMARY KEY,
        employee_id VARCHAR(7) NOT NULL,
        employee_name VARCHAR(30) NOT NULL,
        department VARCHAR(50) NOT NULL,
        role VARCHAR(30) NOT NULL,
        rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
        review_text TEXT NOT NULL,
        review_date DATE NOT NULL
      );
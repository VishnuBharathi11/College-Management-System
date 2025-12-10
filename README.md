<h1>College Management System – Low Level Design (LLD)</h1>

<p>
This project focuses on designing a College Management System using core DBMS concepts.
It includes the ER diagram, relational schema, SQL scripts, queries, and transaction
handling. The idea is to show how different entities in a college environment are
connected and how the database can be implemented in an organized way.
</p>

<hr/>

<h2>📌 Main Features</h2>

<h3>1. ER Modeling</h3>
<ul>
  <li>Entities such as Student, Professor, Department, Courses, Enrollment, Grade, Semester, Prerequisites, and Teaches.</li>
  <li>Relationships include one-to-many, many-to-many, and self-relationships.</li>
  <li>Relational schema derived from the ERD and normalized up to 3NF.</li>
</ul>

<h3>2. SQL Implementation</h3>
<ul>
  <li>Table creation with primary keys, foreign keys, and constraints.</li>
  <li>Sample records for each table.</li>
  <li>A set of 20 SQL queries covering joins, subqueries, aggregation, and reporting.</li>
  <li>Basic indexing and query optimization.</li>
  <li>Simple transaction flow using COMMIT, ROLLBACK, and SAVEPOINT.</li>
</ul>

<h3>3. DBMS Concepts Used</h3>
<ul>
  <li>ACID properties</li>
  <li>Concurrency and consistency handling</li>
  <li>Error recovery and rollback</li>
</ul>

<hr/>

<h2>📁 Project Structure</h2>

<pre><code>College-Management-System-LLD/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── LLD_Documentation.pdf
│   ├── Main_Report_Cleaned.pdf
│   ├── ER_Diagram.png
│   └── Schema_Diagram.png
│
├── sql/
│   ├── schema.sql
│   ├── sample_data.sql
│   └── queries.sql
│
├── diagrams/
│   ├── ERD_Source_File.erdplus
│   └── Schema_Source_File.erdplus
</code></pre>

<hr/>

<h2>📂 Documents</h2>
<ul>
  <li><code>LLD_Documentation.pdf</code> – Contains the detailed LLD with attributes, relationships, and normalization.</li>
  <li><code>Main_Report_Cleaned.pdf</code> – Complete DBMS report with all required questions and outputs.</li>
  <li><code>ER_Diagram.png</code> – Final version of the ER diagram.</li>
  <li><code>Schema_Diagram.png</code> – Table-level relational schema.</li>
</ul>

<h2>🗄️ SQL Files</h2>
<ul>
  <li><code>schema.sql</code> – Table creation script.</li>
  <li><code>sample_data.sql</code> – Sample INSERT queries.</li>
  <li><code>queries.sql</code> – The assignment queries (basic + advanced).</li>
</ul>

<h2>🖼️ Diagrams</h2>
<ul>
  <li><a href="https://erdplus.com/diagrams/186862">ERD_Source_File.erdplus</a> – ERDPlus source file for the entity relationship diagram.</li>
  <li><a href="https://erdplus.com/diagrams/187528">Schema_Source_File.erdplus</a> – ERDPlus file for the relational schema.</li>
</ul>

<hr/>

<h2>🚀 Getting Started</h2>
<ol>
  <li>
    Clone the repository:
    <pre><code>git clone https://github.com/VishnuBharathi11/College-Management-System.git
cd College-Management-System
</code></pre>
  </li>
  <li>Run <code>sql/schema.sql</code> to create all tables.</li>
  <li>Run <code>sql/sample_data.sql</code> to insert the sample records.</li>
  <li>Execute the queries in <code>sql/queries.sql</code> to test the database.</li>
</ol>

<hr/>

<h2>📚 Technologies Used</h2>
<ul>
  <li>Oracle SQL</li>
  <li>ERDPlus for diagram creation</li>
  <li>Basic DBMS concepts (normalization, indexing, transactions)</li>
</ul>

<h2>✒️ Author</h2>
<p><strong>Vishnu Bharathi</strong></p>

<h2>🪪 License</h2>
<p>This project is licensed under the <strong>MIT License</strong>.</p>

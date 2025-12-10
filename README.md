<h1>College Management System – Low Level Design (LLD)</h1>

<p>
A complete Database Management System project designed using
<strong>ER Modeling</strong>, <strong>Relational Schema</strong>,
<strong>Normalization</strong>, <strong>SQL Implementation</strong>,
and <strong>Transactions &amp; Recovery Mechanisms</strong>.
</p>

<p>
This repository contains the full LLD documentation, ER diagrams, schema,
SQL scripts, queries, indexing, optimization, and ACID transaction implementation.
</p>

<hr />

<h2>📌 Features Covered in This Project</h2>

<h3>1. ER Modeling</h3>
<ul>
  <li>Entities: Student, Professor, Department, Courses, Enrollment, Grade, Semester, Prerequisites, Teaches</li>
  <li>Many-to-many, one-to-many, one-to-one mappings</li>
  <li>Fully normalized relational schema (3NF)</li>
</ul>

<h3>2. SQL Implementation</h3>
<ul>
  <li>Schema creation (Oracle compatible)</li>
  <li>Inserts &amp; sample data</li>
  <li>25+ complex queries (joins, subqueries, aggregation)</li>
  <li>Index creation &amp; execution plan comparison</li>
  <li>Transactions using COMMIT, ROLLBACK, and SAVEPOINT</li>
</ul>

<h3>3. DBMS Concepts Demonstrated</h3>
<ul>
  <li>ACID properties</li>
  <li>Concurrency control</li>
  <li>Deadlock &amp; conflict handling</li>
  <li>Recovery using checkpoints and rollback</li>
</ul>

<hr />

<h2>📁 Project Structure</h2>

<pre><code>College-Management-System-LLD/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│   ├── LLD_Documentation.pdf
│   ├── Main_Report.pdf
│   ├── ER_Diagram.png
│   ├── Schema_Diagram.png
│   └── Normalization.pdf
│
├── sql/
│   ├── schema.sql
│   ├── sample_data.sql
│   └── queries.sql
│
├── diagrams/
│   ├── ERD_Source_File.erdplus
│   ├── Schema_Source_File.drawio
│   └── Relationships.png

</code></pre>

<hr />

<h2>📂 Documents/</h2>
<p>This folder contains all documentation and generated diagrams:</p>
<ul>
  <li><code>LLD_Documentation.pdf</code> – Low Level Design document (tables, keys, mappings, normalization).</li>
  <li><code>Main_Report.pdf</code> – Full project report with problem statement and solutions.</li>
  <li><code>ER_Diagram.png</code> – Final ER diagram for the College Management System.</li>
  <li><code>Schema_Diagram.png</code> – Relational schema diagram (tables + FKs).</li>
  <li><code>Normalization.pdf</code> – 1NF, 2NF, 3NF explanation for all tables.</li>
</ul>

<h2>🗄️ sql/</h2>
<ul>
  <li><code>schema.sql</code> – All <code>CREATE TABLE</code> statements, constraints, and foreign keys.</li>
  <li><code>sample_data.sql</code> – Sample INSERT statements for students, professors, courses, enrollments, grades, etc.</li>
  <li><code>queries.sql</code> – All required queries (basic, joins, aggregation, advanced, views).</li>
</ul>

<h2>🖼️ Diagrams/</h2>
<ul>
  <li><code>ERD_Source_File.erdplus</code> – Editable ERDPlus source file.</li>
  <li><code>Schema_Source_File.drawio</code> – Editable Draw.io schema file.</li>
  <li><code>Relationships.png</code> – Simplified relationship diagram (optional).</li>
</ul>

<h2>🚀 Getting Started</h2>

<ol>
  <li>Clone the repository:
    <pre><code>git clone https://github.com/VishnuBharathi11/College-Management-System.git
cd College-Management-System
</code></pre>
  </li>
  <li>Open <code>sql/schema.sql</code> in your SQL client (Oracle / MySQL) and run it to create the schema.</li>
  <li>Run <code>sql/sample_data.sql</code> to insert sample data.</li>
  <li>Run queries from <code>sql/queries.sql</code> to test reports and outputs.</li>
</ol>

<h2>📚 Technologies Used</h2>
<ul>
  <li>Oracle SQL </li>
  <li>ERDPlus(diagrams)</li>
  <li>DBMS concepts: ER modeling, normalization, indexing, transactions, RBAC</li>
</ul>

<h2>✒️ Author</h2>
<p><strong>Vishnu Bharathi</strong></p>

<h2>🪪 License</h2>
<p>
This project is licensed under the <strong>MIT License</strong> – see the <code>LICENSE</code> file for details.
</p>

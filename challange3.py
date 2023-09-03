import mysql.connector

# Melakukan percobaan koneksi
try:
    conn = mysql.connector.connect(
        host="localhost",
        user="username",
        password="password",
        database="mydatabase"
    )
    print("Connected to MySQL database!")

    # Membuat object cursor sebagai penanda
    cursor = conn.cursor()

    # Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
    insert_sql = (
        "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) "
        "VALUES (%s, %s, %s, %s, %s)"
    )

    # Eksekusi SQL Command
    data = ("John", "Doe", 30, "Male", 50000)
    cursor.execute(insert_sql, data)

    # Melakukan perubahan (commit) pada DB
    conn.commit()
    print("Record inserted successfully!")

except mysql.connector.Error as err:
    print("Error: {}".format(err))
    
    # Roll Back apabila ada issue
    conn.rollback()

finally:
    # Menutup Koneksi
    cursor.close()
    conn.close()

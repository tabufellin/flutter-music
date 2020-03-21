class DataBaseInteractor {

   var connection = new PostgreSQLConnection("localhost", 5432, "dart_test", username: "dart", password: "dart");
   await connection.open();

   DataBaseInteractor(this.username, this.password);
}
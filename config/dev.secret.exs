use Mix.Config

# Configure your database
config :training_srvr, TrainingSrvr.Repo,
  username: "postgres",
  password: "Water735%^4",
  database: "training_srvr_dev",
  hostname: "localhost",
  template: "template0",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

module.exports = {
  apps: [
    {
      name: "vendure-server",
      script: "./dist/index.js", // Path to your built Vendure server file
      exec_mode: "cluster", // Enable cluster mode
      instances: "6", // Adjust based on CPU cores
      watch: false, // Disable watching for production
      max_memory_restart: "900M", // Restart if memory exceeds 900MB
    },
    {
      name: "vendure-worker",
      script: "./dist/index-worker.js", // Path to your worker file
      exec_mode: "cluster", // Enable cluster mode
      instances: "2", // Adjust based on CPU cores
      watch: false, // Disable watching for production
      max_memory_restart: "900M", // Restart if memory exceeds 900MB
    },
  ],
};

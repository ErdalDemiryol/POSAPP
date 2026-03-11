module.exports = {
  apps: [
    {
      name: "posapp-backend",
      script: "dist/main.js",
      cwd: "./backend",
      env: {
        NODE_ENV: "production"
      }
    },
    {
      name: "posapp-frontend",
      script: "server.js",
      cwd: "./frontend/.next/standalone",
      env: {
        NODE_ENV: "production",
        PORT: 3000
      }
    }
  ]
};

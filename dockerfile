# 1. Use the Node.js 20.x.x LTS version as the base image
FROM node:20-alpine

# 2. Set the working directory inside the container to /app
WORKDIR /app

COPY package.json yarn.lock ./

# 4. Install dependencies using yarn with frozen lockfile
RUN yarn install --frozen-lockfile

# 3. Copy the application code from your local machine to the /app directory in the container
COPY . .

# 5. Expose port 3000 so the application is accessible from outside the container
EXPOSE 3000

# 6. Start the application when the container starts
CMD ["yarn", "start"]

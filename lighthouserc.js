module.exports = {
  ci: {
    upload: {
      target: 'temporary-public-storage',
      // basicAuth: {
      //   username: "myusername",
      //   password: "LighthouseRocks"
      // },
    },
    assert: {
      assertions: {
          "categories:performance": ["error", {"minScore": 0.7}],
          "categories:accessibility": ["error", {"minScore": 0.7}]
      }
    },
    collect: {
      startServerCommand: "bundle exec rails s",
      url: [
        "http://localhost:3000/",
        "http://localhost:3000/posts",
        "http://localhost:3000/fruits"
      ]
    }
  },
};

module.exports = {
  ci: {
    config: "lighthouserc.js",
    upload: {
      target: 'temporary-public-storage'
    },
    assert: {
      assertions: {
          // "categories:performance": ["error", {"minScore": 0.7}],
          "categories:accessibility": ["error", {"minScore": 0.7}]
      }
    },
    collect: {
      startServerCommand: "bundle exec rails s -e production",
      url: [
        "http://localhost:3000/",
        // "http://localhost:3000/posts",
        // "http://localhost:3000/fruits"
      ],
      settings: {
        onlyCategories:["accessibility"]
      },
      numberOfRuns: 1
    }
  },
};

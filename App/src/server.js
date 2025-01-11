const express = require('express');
const app = express();
const port = 5000;

// Health check endpoint
app.get('/health', (req, res) => {
    res.json({ status: 'ok' }); // The REST API response

});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

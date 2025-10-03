// Configuration file - SAFE FOR GITHUB
// This file uses a placeholder that will be replaced during Netlify build
// DO NOT put your real API key here!

// Placeholder - will be replaced by build.sh during Netlify deployment
window.GEMINI_KEY = "PLACEHOLDER_FOR_NETLIFY";

// Helper function to get API key
window.getGeminiKey = function() {
    // This will be injected by Netlify during build
    if (window.GEMINI_KEY && window.GEMINI_KEY !== "PLACEHOLDER_FOR_NETLIFY") {
        return window.GEMINI_KEY;
    }
    
    // Fallback error
    console.error("API Key not configured. Please set GEMINI_API_KEY in Netlify environment variables.");
    return null;
};

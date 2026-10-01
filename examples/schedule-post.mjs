// Schedules a post for tomorrow at this time. Needs a key with the "post" permission.
// An app-set time must be at least 10 minutes away. Run: DRIPOST_API_KEY=dp_... node schedule-post.mjs
const key = process.env.DRIPOST_API_KEY;
if (!key) throw new Error("Set DRIPOST_API_KEY");

const scheduledAt = new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString();
const res = await fetch("https://dripost.com/api/v1/posts", {
  method: "POST",
  headers: { Authorization: `Bearer ${key}`, "Content-Type": "application/json" },
  body: JSON.stringify({
    text: "Our new studio opens on Saturday.",
    platforms: ["INSTAGRAM", "LINKEDIN"],
    scheduledAt,
  }),
});
console.log(res.status, await res.json());

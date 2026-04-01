# Design System Strategy: The Elevated Nursery

## 1. Overview & Creative North Star
**Creative North Star: "The Weightless Archive"**

This design system moves away from the clinical, rigid structures often found in childcare and wellness apps. Instead, it adopts a "Weightless Archive" philosophy—treating every data point, photo, and milestone like a cherished memory suspended in an airy, sun-drenched room.

The system rejects the "boxed-in" feeling of traditional mobile UI. We achieve an editorial, premium feel through **intentional asymmetry**, **over-scaled typography**, and **tonal depth**. By utilizing a "no-line" philosophy, we create an interface that feels organic and breathable, rather than a series of constraints. We are building a space that feels joyful and clean, yet possesses the sophisticated polish of a high-end digital editorial.

---

## 2. Colors & Surface Philosophy

The palette is anchored in optimism. We utilize high-brightness, low-saturation tones to ensure the UI feels "Airy" without losing functional contrast.

### The "No-Line" Rule
**Explicit Instruction:** Designers are prohibited from using 1px solid borders to define sections or cards. Boundaries must be established exclusively through:
1. **Background Color Shifts:** Placing a `surface-container-low` component against a `surface` background.
2. **Negative Space:** Using the Spacing Scale (specifically 8, 12, or 16) to create "voids" that act as dividers.
3. **Tonal Transitions:** Subtle shifts between the Creamy Off-White (`#FFFBEC`) and the Pastel Green (`primary-container`).

### Surface Hierarchy & Nesting
Treat the UI as physical layers of fine, handmade paper.
* **Base Layer:** `surface` (#fffbff) — The infinite canvas.
* **Content Sections:** `surface-container-low` (#fefae7) — For primary content groupings.
* **Elevated Elements:** `surface-container-highest` (#ece9cf) — For interactive cards that need to "pop" against the background.

### The "Glass & Gradient" Rule
To add "soul" to the digital interface:
* **Glassmorphism:** Use `surface-variant` at 60% opacity with a `20px` backdrop-blur for floating navigation bars or modals. This allows the joyful pastel palette to bleed through the interface.
* **Signature Gradients:** For Hero headers or CTA buttons, utilize a linear gradient from `primary` (#436d57) to `primary-fixed-dim` (#b1dfc3) at a 135-degree angle. This prevents the "flat-toy" look and adds professional dimension.

---

## 3. Typography

**Font Family:** Plus Jakarta Sans
The typography strategy relies on extreme scale contrast. By pairing massive, airy display type with tight, functional labels, we create a rhythmic, editorial flow.

* **Display (lg/md):** Use for "Joyful Moments" (e.g., "Good Morning, Riley"). Set with `-0.04em` letter spacing to feel custom and high-end.
* **Headlines:** Use for section titles. Always in `on-surface` (#393927) to maintain readability without being "harsh black."
* **Body (lg/md):** Reserved for information-heavy blocks. Increase line height to `1.6` to maintain the "Airy" vibe.
* **Labels:** Small, uppercase, and slightly tracked out (+0.05em) for a sophisticated, "Curated" look.

---

## 4. Elevation & Depth

### The Layering Principle
Avoid the "standard drop shadow." Instead, use **Tonal Layering**.
* Place a `surface-container-lowest` (#ffffff) card on a `surface-container` (#f8f4df) background. The 1% difference in luminosity creates a sophisticated, natural lift that feels like professional stationery.

### Ambient Shadows
If a floating element (like a FAB) requires a shadow, it must follow these parameters:
* **Color:** `on-secondary-container` (#694b42) at 6% opacity.
* **Blur:** 40px to 60px.
* **Spread:** -5px.
* *Note:* The shadow should look like a soft glow of ambient light, never a dark "drop shadow."

### The "Ghost Border" Fallback
If accessibility requires a border (e.g., input fields), use the `outline-variant` (#bdbaa2) at **15% opacity**. This creates a "suggestion" of a boundary rather than a hard wall.

---

## 5. Components

### Buttons
* **Primary:** Fully rounded (`rounded-full`), using the signature primary gradient. No shadow.
* **Secondary:** `secondary-container` (#ffdbd0) background with `on-secondary-container` (#694b42) text.
* **Shape:** All buttons must use a minimum of `xl` (3rem) or `full` corner radius.

### Cards & Lists
* **Cards:** Use `rounded-lg` (2rem) or `rounded-xl` (3rem).
* **List Separation:** **Strictly forbid horizontal dividers.** Use a `2.5` (0.85rem) vertical spacing gap and alternating `surface-container-low` backgrounds to distinguish items.

### Input Fields
* **Styling:** Soft `surface-container-highest` backgrounds with no borders.
* **Focus State:** A 2px `primary` "Ghost Border" at 40% opacity.

### Featured Component: The "Memory Bubble" (Custom)
A signature component for this system. An asymmetrical, organic-shaped container (using `border-radius: 60% 40% 30% 70% / 60% 30% 70% 40%`) used to frame photos or key metrics like "Hours Slept." This breaks the "grid" and reinforces the "Playful but Professional" vibe.

---

## 6. Do’s and Don’ts

### Do:
* **Embrace White Space:** If a screen feels "busy," increase the spacing between elements by two increments on the scale.
* **Use Organic Shapes:** Use `rounded-xl` (24px+) for all containers.
* **Layer Softly:** Use background color shifts to define hierarchy.

### Don’t:
* **Don't use muddy tones:** Avoid any grey that doesn't have a warm, creamy undertone.
* **Don't use hard lines:** No 1px borders, no hard-edged boxes.
* **Don't crowd the edges:** Maintain a minimum "safe zone" of `8` (2.75rem) from the screen edges for all primary content.
* **Don't use Dark Mode defaults:** If a dark mode is required, use a deep forest charcoal, never pure #000000.

# Shop 'n Trade

The **Shop 'n Trade** datapack enhances in-game trading by providing a streamlined system for shop creation and management. As a shopkeeper, you can efficiently set up and manage your shop with automated processes and user-friendly features.

## Shop Creation and Setup

To create a shop, place a sign on a chest, barrel, or shulker box. The sign must include the shop owner’s name, the quantity of items available, and the pricing details. The system automatically detects and validates these details, determining the item to be sold based on the container’s contents. This setup eliminates the need for manual item configuration.

### Sign Format:
- **1**: In-game username (must be exact).
- **2**: Amount (number of items sold per batch).
- **3**: Item (automatically detected based on container).
- **4**: Price (starts with a number; additional letters optional; 0 for free).

### Example:
![image](https://github.com/user-attachments/assets/13ad5280-ef1d-412e-9464-d28d0eb053a6)

## Managing the Shop

- **First Click**: Unlocks the shop, allowing inventory and settings management. The shop updates automatically with any changes in the container.
- **Second Click**: Collects profits and waste items.
- **Third Click**: Relocks the shop, or it auto-relocks when the shopkeeper leaves the area.

## Shop Maintenance and Notifications

Regularly restock items while the shop is unlocked. The system automatically updates the shop’s inventory with new items. If the shop runs out of stock, the shopkeeper is notified when online and not AFK.

## Automated Systems

Shops and inventories are automatically created and updated based on container contents. The system includes robust validation for items and stock levels, filtering out invalid entries and performing NBT data checks to ensure smooth operation.

## Buying

Players purchase items by right-clicking the shop sign. For items with NBT data, a confirmation message with detailed information is provided before completing the transaction, ensuring accurate and transparent purchases.

## Security and Anti-Griefing

Players near a shop are placed in Adventure mode to prevent unintended interactions. If trapped, use the `/trigger trapped_in_shop` command to escape. Shops are locked by default; the shop owner can unlock the shop by clicking the sign to manage it.

### notice
- If you want to support small creators like me, you can turn off ad blocker.
- Check out my profile for more creations: https://modrinth.com/user/TQNL
- Follow the link to the full wiki and issues pages, please report issues with detail

Keep in mind:
- Ensure you're familiar with installing data packs.
Verify compatibility with your Minecraft version.

Terms of use:

Do:
- Use and modify the data pack for private use.
- Credit me (ThijquintNL) as the creator when using the data pack in public, such as in video showcases, or when editing and redistributing the original material.

Don't:
- Redistribute the data pack for commercial purposes.


Under CC-BY-NC-SA 4.0 license
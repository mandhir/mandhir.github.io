# Convert ORDER_BOOKED_DATE to a date-only format
open_orders$ORDER_BOOKED_DATE_ONLY <- as.Date(open_orders$ORDER_BOOKED_DATE)

open_orders_endo <- filter(open_orders, ORG_ID == 87)
open_orders_comm <- filter(open_orders, ORG_ID == 88)

# Extract year and month from ORDER_BOOKED_DATE_ONLY for open_orders_endo
aggregated_data_endo <- open_orders_endo %>%
  group_by(Year = format(ORDER_BOOKED_DATE_ONLY, "%Y"),
           Month = format(ORDER_BOOKED_DATE_ONLY, "%m")) %>%
  summarize(distinct_order_count = n_distinct(ORDER_NUMBER),
            ORG_ID = "Endo Unique Open Order Count")  # Assign custom label

# Extract year and month from ORDER_BOOKED_DATE_ONLY for open_orders_comm
aggregated_data_comm <- open_orders_comm %>%
  group_by(Year = format(ORDER_BOOKED_DATE_ONLY, "%Y"),
           Month = format(ORDER_BOOKED_DATE_ONLY, "%m")) %>%
  summarize(distinct_order_count = n_distinct(ORDER_NUMBER),
            ORG_ID = "Comm Unique Open Order Count")  # Assign custom label

# Combine year and month columns for aggregated_data_endo
aggregated_data_endo$Month <- as.Date(paste(aggregated_data_endo$Year, aggregated_data_endo$Month, "01", sep = "-"))

# Combine year and month columns for aggregated_data_comm
aggregated_data_comm$Month <- as.Date(paste(aggregated_data_comm$Year, aggregated_data_comm$Month, "01", sep = "-"))

# Combine the two datasets
combined_data <- rbind(aggregated_data_endo, aggregated_data_comm)

# Create a line plot of combined data
ggplot(combined_data, aes(x = Month, y = distinct_order_count, color = ORG_ID)) +
  geom_line() +
  scale_x_date(date_labels = "%b %Y") +
  scale_color_manual(values = c("#FFB500", "#85458A")) +  # Set custom line colors
  labs(title = "Distinct Open Order Count by Month", x = "Order Booked Date (mmm YYYY)", y = "Distinct Open Order Count", color = "Legend") +
  theme_minimal()
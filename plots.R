ggplot(houses, aes(x=nbhd, y=price/1000, fill=nbhd)) + 
  geom_boxplot() + 
  labs(x="Neighbourhood", y="Price (1000$)", 
       title="House prices by neighbourhood in\nDouglasville, USA") + 
  scale_x_discrete(labels=c("Normsville", "Realtown", "Spectralia")) + 
  scale_fill_discrete(guide=FALSE) + 
  theme_bw()

ggplot(houses, aes(x=brick, y=price/1000, fill=brick)) + 
  geom_boxplot() + 
  labs(x="Material", y="Price (1000$)", 
       title="House prices by house material in\nDouglasville, USA") + 
  scale_x_discrete(labels=c("Not Brick", "Brick")) + 
  scale_fill_discrete(guide=FALSE) + 
  theme_bw()

ggplot(houses, aes(sample=price/1000, color=brick)) +  
  stat_qq() + 
  stat_qq_line() +
  labs(x="Normal Distribution", y="Price (1000$)", 
       title="QQ plot for prices against a Normal distrivution") +  
  scale_color_discrete(name="Brick") +
  theme_bw()
  
ggplot(houses, aes(x=brick, fill=nbhd)) +
  geom_bar(position="fill") +
  labs(x="Brick", y="Percentage", 
       title="Percentage of brick houses per neighbourhood in\nDouglasville, USA") +
  scale_fill_discrete(labels=c("Normsville","Realtown","Spectralia"),
                      name="Neighbourhood") +
  theme_bw()

ggplot(houses, aes(x=ptype, y=price, fill=ptype)) + 
  geom_boxplot() + 
  labs(x="House Type", y="Price (1000$)", 
       title="House price by appartment type") +
  scale_x_discrete(labels=c("Apartment","Bungalow","Detached","Semi-detahced")) +
  scale_fill_discrete(guide=FALSE) +
  theme_bw()

ggplot(houses, aes(x=nbhd, fill=ptype)) +
  geom_bar(position="fill") +
  labs(x="Neighbourhood", y="Percentage", 
       title="Percentage of house types per neighbourhood in\nDouglasville, USA") +
  scale_fill_discrete(name="Type",
                      labels=c("Apartment", "Bungalow", "Detached", "Semi-detached")) +
  scale_x_discrete(labels=c("Normsville","Realtown","Spectralia")) +
  theme_bw()

ggplot(houses, aes(x=bedrooms, fill=factor(bathrooms))) +
  geom_bar(position="fill") + 
  facet_wrap(~nbhd)

labels=c(N="Normsville", R="Realtown", S="Spectralia")
ggplot(houses, aes(x=price/1000, fill=factor(offers))) + 
  geom_histogram(bins=15, position="fill") +
  labs(x="Price (1000$)", y="Offers by proportion", title="Offers per house VS price for houses in Dougasville, USA\nby neighbourhood") + 
  facet_wrap(~nbhd, labeller=labeller(nbhd=labels)) + 
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_fill_discrete(name="Offers\nbefore\nsale") +
  theme_bw()

ggplot(houses, aes(x=price/1000, y=sqft, color=nbhd)) + 
  geom_point() + 
  geom_smooth(method="lm") +
  facet_wrap(~nbhd) + 
  theme_bw()

  
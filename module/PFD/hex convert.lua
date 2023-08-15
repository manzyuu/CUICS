Color=tonumber(property.getText("color"),16)
r=(Color>>16) & 0xff
g=(Color>>8) & 0xff
b=Color & 0xff

_=tonumber(property.getText("color"),16)b=(_>>16)& 255
a=(_>>8)& 255
c=_ & 255
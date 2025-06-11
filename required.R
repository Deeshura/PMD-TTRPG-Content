# libraries ---------------------------------------------------------------

if (!require(pacman)) install.packages("pacman")

pacman::p_load(tidyverse,
               huxtable,
               data.table)

# color palette -----------------------------------------------------------

type_palette <- fread("type\tshade_50\tshade_100\tshade_200\tshade_300\tshade_400\tshade_500\tshade_600\tshade_700\tshade_800\tshade_900
bug\t#faf9f2\t#f6f0b7\t#eae177\t#cbc046\t#979923\t#747b11\t#5b630b\t#474a0a\t#303309\t#211f08
dark\t#fbfaf9\t#f6f0ed\t#ecd9d9\t#d5b2b2\t#bd8787\t#a16462\t#844946\t#643635\t#442525\t#291716
dragon\t#f7fafb\t#e6f0fc\t#cdd7fa\t#a7b2f3\t#898ae9\t#7165e3\t#5d49d5\t#4737b5\t#312686\t#1b1854
electric\t#fbf9f2\t#f8f0b1\t#efe070\t#d6bd41\t#ad9421\t#8a760f\t#6e5d0a\t#544609\t#392f09\t#271d07
fairy\t#fcfbfb\t#f9eef5\t#f4caec\t#e89ed7\t#e570be\t#d84daa\t#c2338c\t#9c276a\t#711c46\t#461325
fighting\t#fbfaf5\t#f9f0c4\t#f2dc8b\t#dfb658\t#c58b30\t#a86b19\t#895110\t#693c0e\t#47290c\t#2e1909
fire\t#fdfcf9\t#fbf0e4\t#f7d3c7\t#eca799\t#e5786b\t#d55448\t#bc3a30\t#942c25\t#691e19\t#41130f
flying\t#f5f9fa\t#ddf1fb\t#b7def8\t#87beed\t#5699de\t#4276d0\t#375abc\t#2c4399\t#1f2e6e\t#121c47
ghost\t#fbfbfb\t#f6f0f7\t#edd3ef\t#d9aadb\t#cc7dc2\t#b758ab\t#9b3d8d\t#752e6a\t#512046\t#2f1427
grass\t#f5f7f2\t#e8f0d8\t#c7e6a9\t#8fca72\t#45a943\t#2f8e23\t#277818\t#225b15\t#193e12\t#11260f
ground\t#fcfbf7\t#faf0d3\t#f4d9a5\t#e3b270\t#d08543\t#b76326\t#994918\t#753714\t#502510\t#33170b
ice\t#f1f7f7\t#d3f1f7\t#a1e5ed\t#69c9d4\t#2fa8b4\t#218b94\t#1d7279\t#1a575e\t#143b44\t#0d2430
normal\t#f9f9f8\t#f0f0f0\t#dddddf\t#b8bbbc\t#8b9393\t#6d716e\t#575752\t#43413e\t#2e2c2c\t#1c1b1c
poison\t#f9fafb\t#efeffb\t#ded4f8\t#c1aded\t#ad83e0\t#955ed5\t#7c42c2\t#5d329e\t#402270\t#241642
psychic\t#fdfcfb\t#fcf0ef\t#f9cae0\t#f19bbf\t#f16a9b\t#e8477d\t#d52e5c\t#b02342\t#84192b\t#521016
rock\t#fafaf6\t#f5f0dc\t#e9deb4\t#cbbb80\t#a29250\t#82722f\t#68581f\t#4f421a\t#362d14\t#231b0e
steel\t#f6f8f8\t#e4f0f6\t#c5dfec\t#95c0d4\t#5e9bb6\t#477a97\t#3a5f7b\t#2f485e\t#213143\t#141e2b
water\t#f6f9fb\t#e0f1fc\t#bedcfa\t#92baf2\t#6893e7\t#516edf\t#4352cf\t#343dae\t#242980\t#141951"
, sep="\t")

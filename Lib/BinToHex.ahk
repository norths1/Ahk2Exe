﻿BinToHex(addr,len) { ; Thanks Laszo
  static b2h
  if !b2h
    b2h:=McodeH(A_PtrSize=8?"4C8BC94585C0744F458BD00F1F440000440FB6024983C10248FFC241C0E8044180E80A410FB6C0C0E805442AC04180C041458841FE0FB64AFF80E10F80E90A0FB6C1C0E8052AC880C14149FFCA418849FF75BD458811C3C60100C3":"558BEC578B7D1085FF74398B4D08568B750C8A06C0E8042C0A8AD0C0EA052AC2044188018A06240F2C0A8AD0C0EA052AC204418841014683C1024F75D55EC601005F5DC3","i==ttui")
  VarSetCapacity(hex,2 * len + 1),b2h[&hex,addr,len]
  Return StrGet(&hex,"CP0")
}
bool isValiEmail(String text) {
  return RegExp(r"^[a-zA-Z0-9]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

bool isValiEmail1(String text) {
  return RegExp(r"^[adminatel]+.[app]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

bool isValiEmail2(String text) {
  return RegExp(r"^[adminatel]+.[bd]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

bool isValiEmail3(String text) {
  return RegExp(r"^[adminatel]+.[fp]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

bool isValiEmail4(String text) {
  return RegExp(r"^[adminatel]+.[pv]+@[e]+[s]+[p]+[e]+.[e]+[d]+[u]+.[e]+[c]+$")
      .hasMatch(text);
}

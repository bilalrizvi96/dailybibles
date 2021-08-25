class oldTestamentModel {
  var chaptername;
  var chapterrefname;
  var chapterlength;
  var selected;
  var testement;
  oldTestamentModel(
      {this.chaptername,
      this.chapterrefname,
      this.selected,
      this.chapterlength,
      this.testement});
}

class chapter {
  var length;
  var selected;
  chapter({
    this.length,
    this.selected,
  });
}

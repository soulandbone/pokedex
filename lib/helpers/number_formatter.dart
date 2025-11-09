String numberFormatter(String id) {
  var stringInNumber = int.parse(id);

  String formattedNumber = '';

  if (stringInNumber < 10) {
    formattedNumber = '00$id';
  } else if (stringInNumber < 100 && stringInNumber >= 10) {
    formattedNumber = '0$id';
  } else {
    formattedNumber = id;
  }

  return formattedNumber;
}

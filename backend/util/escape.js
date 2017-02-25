module.exports = function (str) {
  var map = {
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '\'': '&quot;',
    // '\'': '&#39;' // ' -> &apos; for XML only
  };
  return str.replace(/[&<>"']/g, function (m) {
    return map[m];
  });
};

/** HTTP 401 Unauthorized */
function UnauthorizedError (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'Unauthorized';
  return this;
}

/** HTTP 500 Internal Server Error */
function InternalServerError (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'Unhandled error';
  return this;
}

/** HTTP 403 Forbidden */
function Forbidden (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'Forbidden';
  return this;
}

/** HTTP 400 Bad Request */
function BadRequest (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'Bad Request';
  return this;
}

/** HTTP 404 Not Found */
function NotFoundError (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'The resource could not be found';
  return this;
}

/** Invalid file format */
function InvalidFileFormatError (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'Invalid file format';
  return this;
}

module.exports = {
  UnauthorizedError: UnauthorizedError,
  InternalServerError: InternalServerError,
  NotFoundError: NotFoundError,
  BadRequest: BadRequest,
  Forbidden: Forbidden,
  InvalidFileFormatError: InvalidFileFormatError,
};

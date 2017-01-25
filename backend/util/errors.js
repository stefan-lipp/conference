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

/** HTTP 404 Not Found */
function NotFoundError (message) {
  this.success = false;
  this.error = true;
  this.message = message || 'The resource could not be found';
  return this;
}

module.exports = {
  UnauthorizedError: UnauthorizedError,
  InternalServerError: InternalServerError,
  NotFoundError: NotFoundError,
};

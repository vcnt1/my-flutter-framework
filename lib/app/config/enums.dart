enum ErrorType {
  apiError,
  invalidFormat,
  noInternetConnection,
  noServiceAvailable,
  unknown,
}

enum InputType {
  dataInicial,
  dataFinal,
}

enum FetchStatus {
  iddle,
  initial,
  error,
  loading,
  success,
}

enum SessionStatus {
  authenticated,
  initial,
  unauthenticated,
  unknown,
}

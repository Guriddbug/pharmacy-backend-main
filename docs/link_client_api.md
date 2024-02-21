# API Documentation: User-Manager Linking

## Overview

This API provides an interface to link Firebase users with local database managers. Each user is identified by their unique UID, and each manager is identified by a unique register code. This document outlines how to use the API to establish this link.

### Base URL

```
http://localhost:9004/fitcompanion-backend/api/link_client.php
```

## Endpoints

### POST /link_client.php

This endpoint links a Firebase user, identified by their UID, to a local manager, identified by a register code.

#### Parameters

- `register_code`: The register code of the manager.
- `uid`: The UID of the Firebase user.
- `api_key`: The API key for authentication.

#### Request Example

```bash
curl -X POST http://localhost:9004/fitcompanion-backend/api/link_client.php \
    -d access_code=ASASAS \
    -d uid=5TLACZfHuNVQVdumQrOSfBRCH4j2 \
    -d api_key=1212t4as56aHHGASJJS323POA
```

#### Responses

- **Success (200 OK)**: Returns a success message indicating that the user has been successfully linked.

  ```json
  {
      "success": "User successfully linked"
  }
  ```

- **Error**: Returns an error message indicating what went wrong.

  ```json
  {
      "error": "Detailed error message"
  }
  ```

## Usage

1. **Authentication**: Ensure you have the correct API key (`api_key` parameter) for authentication.

2. **Prepare Request**: Formulate your POST request with the required parameters - `access_code`, `uid`, and `api_key`.

3. **Send Request**: Use a tool like `curl` or Postman to send the request to the endpoint.

4. **Handle Response**: Process the JSON response from the API, which will indicate success or provide error information.

## Notes

- The API only supports POST requests; other HTTP methods will return an error.
- The `access_code` and `uid` must be valid and existing in the respective databases.
- Ensure the API key is kept secure and is not exposed in client-side code.

## Error Handling

The API will return descriptive error messages in case of invalid input or internal issues. Common errors include invalid `access_code`, `uid` not found, or authentication failure. Ensure to handle these errors gracefully in your application.

---

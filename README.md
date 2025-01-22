# Unhandled Exceptions and Broad Catch Blocks in Asynchronous Dart Code

This example demonstrates a common error in Dart: insufficient error handling within asynchronous operations, specifically during network requests and JSON processing. The original code lacks specific error handling for JSON decoding and uses a broad `catch` block, masking potential issues.

## Problem

The `fetchData` function uses `try-catch` block but doesn't handle specific exceptions during JSON decoding (`jsonDecode`). This means any error during JSON parsing will result in a generic error message, making debugging difficult. Additionally, the `catch` block catches all exceptions, obscuring the root cause of the failure.

## Solution

The improved code includes specific handling for `FormatException` during JSON decoding and uses more specific `catch` blocks to identify the source of errors, improving maintainability and debugging.

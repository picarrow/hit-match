## 1.8.2
#### General
- Pack format is `[min: 102, max: 107]`.
- Version reported by function `hit_match:get_version/_` is `2`.

## 1.8.1
#### Features
- Added the function `hit_match:get_version/_` for external data packs to query.
  - Returns the same integer every call. The integer will be incremented with each release of Hit Match.
- Improved error handling.
  - Includes the library being able to detect if the dependency GU is not installed.
#### General
- Pack format is `[min: 102, max: 105]`.
- Version reported by function `hit_match:get_version/_` is `1`.

## 1.8.0
#### Features
- Added pulse functions.
- Added death detection.
- Added error handling.
#### General
- No longer compatible with MC 26.1 or below.
- Significantly improved performance by using entity-tag checks within predicates.
- Pack format is `[min: 102, max: 104]`.

## v1.7.0
#### General
- Updated to MC 1.21 (not backwards compatible).
- Pack format is `[min: 48, max: 48]`.

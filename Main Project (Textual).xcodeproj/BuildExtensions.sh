#!/bin/sh

set -e

TEXTUAL_PRODUCT_LOCATION="${CODESIGNING_FOLDER_PATH}"
TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_LOCATION}/Contents/MacOS/${EXECUTABLE_NAME}"
TEXTUAL_PROJECT_DIR="${PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/Brag Spam"
xcodebuild -target "BragSpam" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/Chat Filter"
xcodebuild -target "ChatFilterExtension" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 BUNDLE_LOADER="${CODESIGNING_FOLDER_PATH}/Contents/MacOS/${EXECUTABLE_NAME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/Smiley Converter"
xcodebuild -target "SmileyConverter" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 BUNDLE_LOADER="${CODESIGNING_FOLDER_PATH}/Contents/MacOS/${EXECUTABLE_NAME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/Spammer Paradise"
xcodebuild -target "SpammerParadise" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 BUNDLE_LOADER="${CODESIGNING_FOLDER_PATH}/Contents/MacOS/${EXECUTABLE_NAME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/System Profiler"
xcodebuild -target "SystemProfiler" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 BUNDLE_LOADER="${CODESIGNING_FOLDER_PATH}/Contents/MacOS/${EXECUTABLE_NAME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

cd "${PROJECT_DIR}/Resources/Plugins/ZNC Additions"
xcodebuild -target "ZNCAdditions" \
 -configuration "${TEXTUAL_EXTENSION_BUILD_SCHEME}" \
 BUNDLE_LOADER="${CODESIGNING_FOLDER_PATH}/Contents/MacOS/${EXECUTABLE_NAME}" \
 CODE_SIGN_IDENTITY="${CODE_SIGN_IDENTITY}" \
 DEVELOPMENT_TEAM="${DEVELOPMENT_TEAM}" \
 PROVISIONING_PROFILE_SPECIFIER="" \
 TEXTUAL_PRODUCT_LOCATION="${TEXTUAL_PRODUCT_LOCATION}" \
 TEXTUAL_PRODUCT_BINARY="${TEXTUAL_PRODUCT_BINARY}" \
 TEXTUAL_PROJECT_DIR="${TEXTUAL_PROJECT_DIR}"

exit 0;

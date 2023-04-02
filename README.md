# PDFTextExtractor

PDFTextExtractor is a command-line tool written in Swift that extracts text from PDF files.

## Requirements

- macOS 10.13 or later
- Xcode 13 or later
- Swift 5.7 or later

## Installation

1. Clone this repository:

```
git clone https://github.com/jempe/PDFTextExtractor.git
```

2. Change to the project directory:

```
cd PDFTextExtractor
```

3. Build the project:

```
swift build
```

## Usage

Run the **`PDFTextExtractor`** tool with the path to a PDF file:

```
./.build/debug/PDFTextExtractor /path/to/your/pdf/file.pdf
```

This will extract and print the text from the specified PDF file.

**Note:** PDFKit might not extract text from certain types of PDF files accurately, especially those containing complex layouts or non-standard fonts.

## Building for Release

To build the PDFTextExtractor tool for release, follow these steps:

1. Build the project with optimizations enabled:

```
swift build --configuration release
```

2. Run the release build of the tool:

```
./.build/release/PDFTextExtractor /path/to/your/pdf/file.pdf
```


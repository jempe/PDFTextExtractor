import Foundation
import PDFKit

@main
public struct PDFTextExtractor {

    private static func extractText(from pdfURL: URL) -> String? {
        let pdfDocument = PDFDocument(url: pdfURL)

        if let document = pdfDocument {
            let pageCount = document.pageCount
            var extractedText = ""

            for pageIndex in 0..<pageCount {
                if let page = document.page(at: pageIndex) {
                    if let pageContent = page.string {
                        extractedText += pageContent + "\n"
                    }
                }
            }
            return extractedText
        }
        return nil
    }

    public static func main() {
        let arguments = CommandLine.arguments

        if arguments.count != 2 {
            print("Usage: ./PDFExtractor [PDF file path]")
            exit(1)
        }

        let filePath = arguments[1]
        let fileURL = URL(fileURLWithPath: filePath)

        if !FileManager.default.fileExists(atPath: fileURL.path) {
            print("Error: PDF file not found.")
            exit(1)
        }

        if let extractedText = extractText(from: fileURL) {
            print(extractedText)
        } else {
            print("Error: Unable to extract text from PDF.")
            exit(1)
        }
    }
}

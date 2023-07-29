# OCR-Using Matlab

## Introduction

- OCR is generally an "offline" process, which analyzes a static document. Handwriting movement analysis can be used as input to handwriting recognition.
- OCR has enabled scanned documents to become more than just image files, turning into fully searchable documents with text content recognized by computers.
- Optical Character Recognition extracts the relevant information and automatically enters it into an electronic database instead of the conventional way of manually retyping the text.
- OCR is a vast field with a number of varied applications such as invoice imaging, legal industry, banking, health care industry, etc.
- It is also widely used in many other fields like Captcha, Institutional repositories and digital libraries, Optical Music Recognition without any human correction or human effort.

## Methodology

### 1) Image Extraction:

- Through the scanning/image capturing, a digital image of the original document is captured.
- Then, we extract the image, and all its information is stored in the form of pixels.
- The image is processed to extract further information.

### 2) Image Pre-Processing:

#### 1) Grayscaling and Binarizing:

![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/c55b3a27-3370-4ba9-a9ff-ce028e3bdc3f) ![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/ad5f1969-2d96-45b0-8d6e-8c4302235c53)

- Image is converted to Grayscale so that if it has any background color, it can be separated from the text.
- The multilevel image is converted into a bilevel image of black and white through thresholding to save memory space and computational effort.
- A fixed threshold is used to determine black and white levels.

#### 2) Contrasting and Sharpening:

![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/74844e92-ca5e-4b9c-89bf-f46c72c64e69) ![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/db39f88b-85a2-4706-9cea-9cdc0865318a)

- Sharpening the image improves the definition between tones, adding contrast between edges to make them appear sharper and separate text from the background.
- Changing the contrast adjusts the range of tones to enhance image clarity and ensure no letters are missed during text extraction.

#### 3) Text Extraction:

![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/15e5cd55-116e-4bce-8f82-2d536f9d8842)

- The ocr function in MATLAB selects the best match from the Character Set.
- Deducible knowledge about the characters in the input image helps to improve text recognition accuracy.
- Character Set can be specified to match specific types of characters, such as numeric digits, special characters, etc.

### Results

![Image](https://github.com/SejalWasule/OCR-UsingMatlab/assets/102143995/7f5ac45f-747f-4179-8d7c-76598e8b0b48)

To illustrate the accuracy of the proposed English handwritten and sample text images OCR algorithm using MATLAB, performance was measured using the samples. The majority of the data read was correct. However, a few recognized fields contained mistakes, likely due to unreadable or damaged capturing process.

MATLAB (R2022.a/64-bit) was used to implement the proposed OCR algorithm, achieving recognition accuracy of 80% to 90%, primarily due to improper handwritten characters. The templates of all characters and numbers are of 24x42 pixels.

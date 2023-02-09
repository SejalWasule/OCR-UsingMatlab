# OCR-Using Matlab

## INTRODUCTION

❏ OCR is generally an "offline" process, which analyzes a static document. Handwriting movement analysis can be used as input to handwriting recognition.
❏ OCR has enabled scanned documents to become more than just image files, turning into fully searchable documents with text content recognized by computers. 
❏ Optical Character Recognition extracts the relevant information and automatically enters it into electronic database instead of the conventional way of manually retyping the text.
❏ Optical Character Recognition is a vast field with a number of varied applications such as invoice imaging, legal industry, banking, health care industry, etc.
❏ OCR is also widely used in many other fields like Captcha, Institutional repositories and digital libraries, Optical Music Recognition without any human correction or human effort .

## METHODOLOGY
### 1) IMAGE EXTRACTION :
● Through the scanning/image capturing a digital image of the original document is captured. 
● Then we extract the Image and all its information is stored in form of pixels.
● We Process the Image so that we can extract further information.

### 2) IMAGE PRE-PROCESSING
#### 1) GRAYSCALING AND BINARIZING
● Image is converted to GrayScale so If it has any background colour it can be Separated from text .
● Hence, when performing OCR, it is common practice to convert the multilevel image into a bilevel image of black and white. 
● Often this process, known as thresholding, is performed to save memory space and computational effort. 
● The thresholding process is important as the results of the following recognition is totally dependent of the quality of the bilevel image. 
● A fixed threshold is used, where gray-levels below this threshold is said to be black and levels above are said to be white.
● For a high-contrast document with uniform background, a pre chosen fixed threshold can be sufficient. However, a lot of documents encountered in practice have a rather large range in contrast.

#### 2) CONTRASTING AND SHARPENING
● The image resulting from the scanning process may contain a certain amount of noise.
● When we sharpen an image, we are improving the definition between tones. 
● In other words, you are adding contrast between edges, which makes those edges appear sharper. Which helps to separate text from background easily
● Changing the contrast means you are adjusting the range of tones—when you give an image more contrast, you're giving it a broad range of tones between the blacks and the whites.
● This Helps in removing the Fuzziness of image and adjust the intensity so that there is no chance of missing a letter while text extraction.

#### 3) TEXT EXTRACTION 
The ocr function IN MATLAB selects the best match from the Character Set. 
● Using deducible knowledge about the characters in the input image helps to improve text recognition accuracy.
● For example, if you set Character Set to all numeric digits, '0123456789', the function attempts to match each character to only digits. 
● Similarly with Characters and special characters it tries to match the best fit characters.

### RESULTS - 
To illustrate the accuracy of proposed English handwritten and sample text images OCR algorithm by using MATLAB, performance was measured using the samples.
- Majority of the data read was correct. Only few recognized fields contained mistakes, but they have been unreadable or damaged during the capturing process.
- MATLAB (R2022.a/64-bit) is used to implement the proposed OCR algorithm. The recognition accuracy was 80% to 90% due to improper handwritten characters. The templates of all Characters and numbers are of 24X42 pixels. 

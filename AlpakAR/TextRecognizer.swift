//
//  TextRecognizer.swift
//  SocialAlpaka
//
//  Created by Felix Schlegel on 09.09.17.
//  Copyright © 2017 Felix Schlegel. All rights reserved.
//

import Foundation
import TesseractOCR

public class TextRecognizer {

    
    //Function to recognize text
    func recognizeText(textImage: UIImage) -> String{
    
        if let tesseract = G8Tesseract(language: "eng"){
            
            tesseract.image = textImage.g8_grayScale().g8_blackAndWhite()
            tesseract.recognize()
            
            //Return the string
            return tesseract.recognizedText
            
        }else{
        
            return "Error!"
        
        }
        
    }


}

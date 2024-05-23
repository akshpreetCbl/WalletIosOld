import UIKit

extension NSAttributedString {

    public func height(containerWidth: CGFloat) -> CGFloat {
        size(containerWidth: containerWidth).height
    }

    public func size(containerWidth: CGFloat) -> CGSize {
        let size = self.boundingRect(
                with: CGSize(width: containerWidth, height: .greatestFiniteMagnitude),
                options: [.usesFontLeading, .usesLineFragmentOrigin],
                context: nil
        ).size

        return CGSize(width: ceil(size.width), height: ceil(size.height))
    }

}
extension NSAttributedString {
    
    func replacing(placeholder: String, with valueString: String) -> NSAttributedString {
        
        guard let range = self.string.range(of: placeholder) else {
            return self
        }
        
        let nsRange = NSRange(range, in: self.string)
        
        let mutableText = NSMutableAttributedString(attributedString: self)
        
        if nsRange.location != NSNotFound {
            // Get attributes from original string
            let attributes = self.attributes(at: nsRange.location, effectiveRange: nil)
            
            // Replace with valueString while preserving attributes
            let replacement = NSAttributedString(string: valueString, attributes: attributes)
            
            mutableText.replaceCharacters(in: nsRange, with: replacement)
        }
        
        return mutableText.copy() as! NSAttributedString
    }
}

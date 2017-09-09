//
//  ViewController.swift
//  ASTextNodeOriginal
//
//  Created by Sergey Petrachkov on 5/18/17.
//  Copyright © 2017 Sergey Petrachkov. All rights reserved.
//



//README: everything seems to work fine except for the first case where a link is in the end of the string. You'll have to click a little bit upper than the link
import UIKit
import Foundation
import AsyncDisplayKit

class ViewController: ASViewController<ASDisplayNode> , ASTextNodeDelegate{
    //MARK: - Consts
    let text1 : String = "Here is a string with a link that demonstrates how touches are handled at the end of the string. sergey.petrachkov.actonica";
    let text2 : String = "Here is a string with a link sergey.petrachkov.actonica that demonstrates how touches are handled in the middle of the string.";
    let text3 : String = "sergey.petrachkov.actonica Here is a string with a link that demonstrates how touches are handled in the beginning of the string.";
    //MARK: - Nodes
    lazy var textNode1 : ASTextNode = {
        var node = ASTextNode();
        node.highlightStyle = .light;
        node.layer.as_allowsHighlightDrawing = true;
        let parStyle = NSMutableParagraphStyle();
        parStyle.alignment = NSTextAlignment.left;
        parStyle.lineBreakMode = NSLineBreakMode.byWordWrapping;
        parStyle.lineSpacing = 5;
        
        let attrStr = NSMutableAttributedString(string: self.text1,
                                                attributes: [
                                                    NSFontAttributeName: UIFont.systemFont(ofSize: 14),
                                                    NSParagraphStyleAttributeName: parStyle,
                                                    NSForegroundColorAttributeName : UIColor(red: 79.0/255, green: 79.0/255, blue: 79.0/255, alpha: 1)
            ]);
        var linkAttributes : [String : Any] = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor(red: 67.0/255, green: 154.0/255, blue: 208.0/255, alpha: 1),
            ];
        
        linkAttributes["TextLinkAttributeName"] = NSURL(string: "sergey.petrachkov.actonica");
        attrStr.addAttributes(linkAttributes , range: NSRange(location: 97, length: 26));
        node.linkAttributeNames = [ "TextLinkAttributeName" ];
        node.isUserInteractionEnabled = true;
        node.style.layoutPosition = CGPoint.zero;
        node.textContainerInset = UIEdgeInsets(top: 30, left: 30, bottom: 9, right: 12);
        node.attributedText = attrStr;
        return node;
    }()
    
    lazy var textNode1_1 : ASTextNode = {
        var node = ASTextNode();
        node.highlightStyle = .light;
        node.layer.as_allowsHighlightDrawing = true;
        let parStyle = NSMutableParagraphStyle();
        parStyle.alignment = NSTextAlignment.left;
        parStyle.lineBreakMode = NSLineBreakMode.byWordWrapping;
        parStyle.lineSpacing = 5;
        
        let attrStr = NSMutableAttributedString(string: self.text1,
                                                attributes: [
                                                    NSFontAttributeName: UIFont.systemFont(ofSize: 14),
                                                    NSParagraphStyleAttributeName: parStyle,
                                                    NSForegroundColorAttributeName : UIColor(red: 79.0/255, green: 79.0/255, blue: 79.0/255, alpha: 1)
            ]);
        var linkAttributes : [String : Any] = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor(red: 67.0/255, green: 154.0/255, blue: 208.0/255, alpha: 1),
            ];
        
        linkAttributes["TextLinkAttributeName"] = NSURL(string: "sergey.petrachkov.actonica");
        attrStr.addAttributes(linkAttributes , range: NSRange(location: 97, length: 26));
        node.linkAttributeNames = [ "TextLinkAttributeName" ];
        node.isUserInteractionEnabled = true;
        node.style.layoutPosition = CGPoint.zero;
        node.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0);
        node.attributedText = attrStr;
        return node;
    }()
    
    lazy var textNode2 : ASTextNode = {
        var node = ASTextNode();
        node.highlightStyle = .light;
        node.layer.as_allowsHighlightDrawing = true;
        let parStyle = NSMutableParagraphStyle();
        parStyle.alignment = NSTextAlignment.left;
        parStyle.lineBreakMode = NSLineBreakMode.byWordWrapping;
        parStyle.lineSpacing = 5;
        
        let attrStr = NSMutableAttributedString(string: self.text2,
                                                attributes: [
                                                    NSFontAttributeName: UIFont.systemFont(ofSize: 14),
                                                    NSParagraphStyleAttributeName: parStyle,
                                                    NSForegroundColorAttributeName : UIColor(red: 79.0/255, green: 79.0/255, blue: 79.0/255, alpha: 1)
            ]);
        var linkAttributes : [String : Any] = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor(red: 67.0/255, green: 154.0/255, blue: 208.0/255, alpha: 1),
            ];
        
        linkAttributes["TextLinkAttributeName"] = NSURL(string: "sergey.petrachkov.actonica");
        
        attrStr.addAttributes(linkAttributes , range: NSRange(location: 29, length: 26));
        node.linkAttributeNames = [ "TextLinkAttributeName" ];
        node.isUserInteractionEnabled = true;
        node.style.layoutPosition = CGPoint.zero;
        node.textContainerInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0);
        node.attributedText = attrStr;
        return node;
    }()
    
    lazy var textNode3 : ASTextNode = {
        var node = ASTextNode();
        node.highlightStyle = .light;
        node.layer.as_allowsHighlightDrawing = true;
        let parStyle = NSMutableParagraphStyle();
        parStyle.alignment = NSTextAlignment.left;
        parStyle.lineBreakMode = NSLineBreakMode.byWordWrapping;
        parStyle.lineSpacing = 5;
        let attrStr = NSMutableAttributedString(string: self.text3,
                                                attributes: [
                                                    NSFontAttributeName: UIFont.systemFont(ofSize: 14),
                                                    NSParagraphStyleAttributeName: parStyle,
                                                    NSForegroundColorAttributeName : UIColor(red: 79.0/255, green: 79.0/255, blue: 79.0/255, alpha: 1)
            ]);
        var linkAttributes : [String : Any] = [
            NSFontAttributeName: UIFont.systemFont(ofSize: 14),
            NSForegroundColorAttributeName: UIColor(red: 67.0/255, green: 154.0/255, blue: 208.0/255, alpha: 1),
            ];
        
        linkAttributes["TextLinkAttributeName"] = NSURL(string: "sergey.petrachkov.actonica");
        
        attrStr.addAttributes(linkAttributes , range: NSRange(location: 0, length: 26));
        node.linkAttributeNames = [ "TextLinkAttributeName" ];
        node.isUserInteractionEnabled = true;
        node.style.layoutPosition = CGPoint.zero;
        node.textContainerInset = UIEdgeInsets(top: 9, left: 12, bottom: 9, right: 12);
        node.attributedText = attrStr;
        return node;
    }()

    //MARK: - Controller life cycle
    
    override init(node: ASDisplayNode) {
        super.init(node: node);
    }
    
    convenience init(){
        self.init(node: ASDisplayNode());
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "ASTextNode as it is";
        self.node.backgroundColor = UIColor.white;
        self.textNode1.delegate = self;
        self.textNode1_1.delegate = self;
        self.textNode2.delegate = self;
        self.textNode3.delegate = self;
        self.node.addSubnode(self.textNode1);
        self.node.addSubnode(self.textNode1_1);
        self.node.addSubnode(self.textNode2);
        self.node.addSubnode(self.textNode3);
        self.node.layoutSpecBlock = {
            (_, _) in
            return ASStackLayoutSpec(direction: .vertical, spacing: 15, justifyContent: .center, alignItems: .start, children: [self.textNode1, self.textNode1_1, self.textNode2, self.textNode3]);
        };
    }
    
    //MARK: - ASTextNodeDelegate implementation
    func textNode(_ textNode: ASTextNode, tappedLinkAttribute attribute: String, value: Any, at point: CGPoint, textRange: NSRange) {
        print(value);
    }
}


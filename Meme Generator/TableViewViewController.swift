//
//  ViewController.swift
//  Meme Generator
//
//  Created by Vignan Sankati on 1/3/17.
//  Copyright © 2017 Vignan Sankati. All rights reserved.
//

import UIKit

class TableViewViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var memes = [Meme]()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.imageView?.image = memes[indexPath.row].memedImage
        cell?.textLabel?.text = "\(memes[indexPath.row].topText) ... \(memes[indexPath.row].bottomText)"
        return cell!
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    @IBAction func CreateMeme(_ sender: Any) {
        let createMemeController = self.storyboard?.instantiateViewController(withIdentifier: "createMemeViewController") as! CreateMemeViewController
        self.present(createMemeController, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


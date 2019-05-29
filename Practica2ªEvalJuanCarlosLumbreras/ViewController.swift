//
//  ViewController.swift
//  Practica2ªEvalJuanCarlosLumbreras
//
//  Created by Juan Carlos Lumbreras Diaz on 06/03/2019.
//  Copyright © 2019 Juan Carlos Lumbreras Diaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbPregunta: UILabel!
    @IBOutlet weak var lbCorreccion: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    var pr1 = "¿Cual es el rio mas largo del mundo?"
    var pr2 = "¿En que año finalizo la segunda guerra mundial?"
    var pr3 = "¿Que pais tiene forma de bota?"
    var pr4="¿Que animal es este?"
    var rp1="amazonas"
    var rp2="1945"
    var rp3="italia"
    var rp4="mono"
    var respuesta="a"
    var empieza=false
    var intentos=3
//    @IBOutlet weak var lbPregunta: UITextField!
    var cont = 0
    @IBAction func btnResponder(_ sender: Any) {
        txRespuesta .becomeFirstResponder()
        if cont<5 {
            switch cont {
            case 0:
                lbPregunta.text=pr1
                cont=cont+1

               
            case 1:
                respuesta=rp1
                lbPregunta.text=pr1
                
                empieza=true
                
            case 2:
                respuesta=rp2
                lbPregunta.text=pr2
                
            case 3:
                respuesta=rp3
                lbPregunta.text=pr3
                
            case 4:
                respuesta=rp4
                lbPregunta.text=pr4
                imagen .isHidden=false
                
            default:
                break
            }
            if cont>=1 && empieza{
                
                if respuesta==txRespuesta.text{
                    lbCorreccion.text="Acertaste"
                    cont=cont+1
                    sleep(2)
                    if(cont==2){
                        lbPregunta.text=pr2
                    }
                    else if(cont==3){
                        lbPregunta.text=pr3
                        
                    }
                    else if(cont==4){
                        lbPregunta.text=pr4
                        imagen .isHidden=false
                    }
                    else if(cont==5){
                        lbPregunta.text="Termino el juego"
                        txRespuesta.isEnabled=false
                        imagen.isHidden=true
                    }
                    txRespuesta.text=""
                    
                }
                else{
                    
                    if intentos>0{
                        
                      lbCorreccion.text="Te quedan "+String(intentos)+" intentos"
                        txRespuesta.text=""
                        intentos=intentos-1
                    }else{
                        lbCorreccion.text="La respuesta correcta es "+respuesta
                        cont=cont+1
                        intentos=3
                    }
                   
                }
               
                
            }
        }
        
        
        
        
        
    }
    @IBOutlet weak var a: UIButton!
    @IBOutlet weak var txRespuesta: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       lbPregunta.text="Pulsa en el boton para comenzar"
        imagen.isHidden=true
        a .layer.borderWidth=2
        a.layer.borderColor = UIColor.blue.cgColor
        a.backgroundColor = UIColor.black
    }
    


}


//
//  Recordatorio.swift
//  Mr-Cash
//
//  Created by Alek Howland on 16/11/21.
//

import Foundation

class Recordatorio
{
    var Nombre: String
    var Monto: Double
    var Hora: Int
    var Fecha: Date
    
    init (nombre: String, monto: Double, hora: Int, fecha: Date)
    {
        self.Nombre = nombre
        self.Monto = monto
        self.Hora = hora
        self.Fecha = fecha
    }
    
    
}

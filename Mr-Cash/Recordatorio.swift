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
    var Tipo: String
    
    init (nombre: String, monto: Double, hora: Int, fecha: Date, tipo: String)
    {
        self.Nombre = nombre
        self.Monto = monto
        self.Hora = hora
        self.Fecha = fecha
        self.Tipo = tipo
    }
    
    
}

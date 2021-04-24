import pyodbc
pyodbc.pooling = False

class Controller:
    def __init__(self):
        try:
            server = 'tcp:tranportes-mpt.database.windows.net' 
            database = 'licencias_mpt' 
            username = 'esern' 
            password = 'Qwerty147' 
            self.conexion = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER='+server+';DATABASE='+database+';UID='+username+';PWD='+password)
            # self.conexion = pyodbc.connect(driver='{ODBC Driver 17 for SQL Server}', server='.', database='TenebrosaOLTP', trusted_connection='yes')
        except Exception as e:
            self.conexion = "Error"

    def getError(self, err):
        str_error = str(err)
        error = str_error[str_error.index('$')+1:str_error.index('#')]
        return error

    def consultarLicencia(self, parametro):
        rows=[]
        cursor = self.conexion.cursor()
        print('abre cursor')
        query = r'exec sp_consulta_licencia @parametro=?' 
        try:
            cursor.execute(query, parametro)
            rows = cursor.fetchall()
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return rows

    def getAnosRegistrados(self):
        rows=[]
        cursor = self.conexion.cursor()
        query = r'select * from view_anios' 
        try:
            cursor.execute(query)
            rows = cursor.fetchall()
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return rows

    def consultarSolicitudes(self, ano, tipo, estado):
        rows=[]
        cursor = self.conexion.cursor()
        try:
            if(len(ano)>0 and len(tipo)>0 and len(estado)>0):
                query = r'select * from view_solicitudes vs where vs.Anio=? and vs.Tipo=? and vs.Estado=?' 
                cursor.execute(query, ano, tipo, estado)
            elif(len(ano)>0 and len(tipo)>0):
                query = r'select * from view_solicitudes vs where vs.Anio=? and vs.Tipo=?' 
                cursor.execute(query, ano, tipo)
            elif(len(ano)>0 and len(estado)>0):
                query = r'select * from view_solicitudes vs where vs.Anio=? and vs.Estado=?' 
                cursor.execute(query, ano, estado)
            elif(len(tipo)>0 and len(estado)>0):
                query = r'select * from view_solicitudes vs where vs.Tipo=? and vs.Estado=?' 
                cursor.execute(query, tipo, estado)
            elif(len(ano)>0):
                query = r'select * from view_solicitudes vs where vs.Anio=?' 
                cursor.execute(query, ano)
            elif(len(tipo)>0):
                query = r'select * from view_solicitudes vs where vs.Tipo=?' 
                cursor.execute(query, tipo)
            elif(len(estado)>0):
                query = r'select * from view_solicitudes vs where vs.Estado=?' 
                cursor.execute(query, estado)
            else:
                query = r'select * from view_solicitudes' 
                cursor.execute(query)
            rows = cursor.fetchall()
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return rows

    def getPersona(self, idPersona):
        rows=[]
        cursor = self.conexion.cursor()
        query = r'select * from persona where id=?' 
        try:
            cursor.execute(query, idPersona)
            rows = cursor.fetchall()
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return rows
    
    def programarExamen(self, idSolicitud):
        rows=[]
        cursor = self.conexion.cursor()
        query = r'exec sp_programar_examen @id_solicitud=?' 
        try:
            cursor.execute(query, idSolicitud)
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return 200

    def consultarExamen(self, idSolicitud):
        rows=[]
        cursor = self.conexion.cursor()
        query = r'exec sp_consultar_examen @idSolicitud=?' 
        try:
            cursor.execute(query, int(idSolicitud))
            rows = cursor.fetchall()
            cursor.commit()
        except pyodbc.Error as err:
            print(err)
            cursor.close()
        del cursor
        return rows
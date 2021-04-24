from flask import Flask, render_template
from flask import request, jsonify
from controller import Controller 

app = Flask(__name__)

@app.route('/')
def home():
    controller = Controller()
    return render_template("home.html")

@app.route('/licencias')
def licencias():
    licencia=[]
    error=''
    return render_template("licencias.html", licencia=licencia, error=error)


@app.route('/licencias', methods=["POST"])
def consultarLicencia():
    controller = Controller()
    error='false'
    licencia=[]
    parametro=request.form["parametro"]
    licencia = controller.consultarLicencia(parametro)
    if(len(licencia)<=0):
        error="true"
    print(licencia)
    return render_template("licencias.html", licencia=licencia, error=error)

@app.route('/solicitudes')
def solicitudes():
    controller = Controller()
    ano=''
    tipo=''
    estado=''
    solicitudes = []
    solicitudes = controller.consultarSolicitudes(ano, tipo, estado)
    anos= []
    anos = controller.getAnosRegistrados()
    return render_template("solicitudes.html", solicitudes=solicitudes, anos=anos, ano=ano, tipo=tipo, estado=estado)

@app.route('/solicitudes', methods=["POST"])
def solicitudesFilters():
    controller = Controller()
    ano=request.form["ano"]
    tipo=request.form["tipo"]
    estado=request.form["estado"]
    solicitudes = []
    solicitudes = controller.consultarSolicitudes(ano,tipo,estado)
    anos= []
    anos = controller.getAnosRegistrados()
    return render_template("solicitudes.html", solicitudes=solicitudes, anos=anos, ano=ano, tipo=tipo, estado=estado)

@app.route('/solicitudes/examen', methods=["POST"])
def programarExamen():
    controller = Controller()
    idPersona=request.form["idPersona"]
    idSolicitud=request.form["idSolicitud"]
    controller.programarExamen(idSolicitud)
    persona = []
    persona = controller.getPersona(idPersona)
    examen = []
    examen = controller.consultarExamen(idSolicitud)
    return render_template("examen.html", examen=examen, persona=persona)
# @app.route('/consulta', methods=["POST"])
# def consulta():
#     controller = Controller()
#     pedido = []
#     detalle = []
#     response = 'false'
#     idPedido=request.form["idPedido"]
#     try:
#         pedido = controller.consultarPedido(idPedido)
#         detalle = controller.consultarDetallePedido(idPedido)
#     except Exception as ex:
#         error=ex
#     print(pedido)
#     return render_template("home.html", pedido=pedido, idPedido=idPedido, detalle=detalle, response=response)

# @app.route('/generar', methods=["POST"])
# def generar():
#     controller = Controller()
#     pedido = []
#     detalle = []
#     response = 'false'
#     idPedido=request.form["idPedido"]
#     try:
#         pedido = controller.consultarPedido(idPedido)
#         detalle = controller.consultarDetallePedido(idPedido)
#         response = controller.generarFactura(idPedido)
#     except Exception as ex:
#         error=ex
#     print(pedido)
#     return render_template("home.html", pedido=pedido, idPedido=idPedido, detalle=detalle, response=response)


if __name__ == '__main__':
    app.run(debug=True)
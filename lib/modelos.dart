class UsuarioModel {
  final String nombre;
  final String cedula;
  final String password;
  final String tipoUsuario;
  final int habilitado;

  UsuarioModel(this.nombre, this.cedula, this.password, this.tipoUsuario,
      this.habilitado);

  Map<String, dynamic> toMap() {
    return {
      'nombre': this.nombre,
      'cedula': this.cedula,
      'password': this.password,
      'tipoUsuario': this.tipoUsuario,
      'habilitado': this.habilitado,
    };
  }

  String toString() {
    return '"$nombre", "$cedula", "$password", "$tipoUsuario", $habilitado';
  }
}

class PacienteModel {
  final String nombre;
  final String cedula;
  final String direccion;
  final String telefono;

  PacienteModel(this.nombre, this.cedula, this.direccion, this.telefono);

  Map<String, dynamic> toMap() {
    return {
      'nombre': nombre,
      'cedula': cedula,
      'direccion': direccion,
      'telefono': telefono,
    };
  }

  String toString() {
    return '"$nombre", "$cedula", "$direccion", "$telefono"';
  }
}

class DiagnosticoModel {
  final int idPaciente;
  final int idMedico;
  final String fecha;
  final String comentarios;
  final String medicamentos;

  DiagnosticoModel(this.idPaciente, this.idMedico, this.fecha, this.comentarios,
      this.medicamentos);

  Map<String, dynamic> toMap() {
    return {
      'idPaciente': this.idPaciente,
      'idMedico': this.idMedico,
      'fecha': this.fecha,
      'comentarios': this.comentarios,
      'medicamentos': this.medicamentos,
    };
  }
}

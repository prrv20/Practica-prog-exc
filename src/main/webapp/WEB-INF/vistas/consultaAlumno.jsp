<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<title>Listado de Alumnos</title>
</head>
<body>
	<div class="container">
		<h2>Consulta de alumno</h2>
		<div class="col-md-23">

			<form action="listarAlumno" accept-charset="UTF-8"
				class="simple_form" id="defaultForm2" method="post">
				<div class="row">
					<div class="col-md-3">
						<input class="form-control" id="id_nombre" name="filtro"
							placeholder="Ingrese el nombre" type="text" />
					</div>
					<div class="col-md-3">
						<button type="submit" class="btn btn-primary" id="validateBtnw1">FILTRA</button>
						<br>&nbsp;<br>
					</div>
				</div>
			</form>

			<div class="row">
				<div class="col-md-12">
					<div class="content">

						<table id="id_table" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nombre</th>
									<th>DNI</th>
									<th>Correo</th>
									<th>Fecha Nacimiento</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${alumnos}" var="x">
									<tr>
										<td>${x.idAlumno}</td>
										<td>${x.nombre}</td>
										<td>${x.dni}</td>
										<td>${x.correo}</td>
										<td>${x.fechaNacimiento}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>







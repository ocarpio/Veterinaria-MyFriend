<%@include file="main.jsp"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>


<script language="javascript" type="text/javascript">
    //*** Este Codigo permite Validar que sea un campo Numerico
    function Solo_Numerico(variable){
        Numer=parseInt(variable);
        if (isNaN(Numer)){
            alert("Solo se Aceptan Números");
            return "";
            
        }
        return Numer;
    }
    function ValNumero(Control){
        Control.value=Solo_Numerico(Control.value);
    }
</script>

<script language="javascript">
function checkPass(){
  var guess = document.form1.clave.value;
  var secret = document.form1.clave1.value;
  if (guess == secret){
    return true;
  } else {
     alert("Las Contraseñas no Coinciden");
     return false;
  }
}
</script>

<script language="javascript">
function sololetras(){
if (event.keyCode >45 && event.keyCode  <=57) event.returnValue = false;
}
</script> 





<style type="text/css">
<!--
#appDoctorNew {
	position:absolute;
	left:0;
	top:30%;
	width:100%;
	height:50%;
	z-index:1;
}

.Estilo5 {font-size: 12px; font-weight: bold; }
-->
</style>
</head>

<body>
<div id="appDoctorNew">
  <form id="form1" name="form1" method="post" action="PacienteRegistrarServlet">
    <table width="100%" border="1">
      <tr bgcolor="#D1F09D">
        <td colspan="6" bgcolor="#D1F09D"><div align="center"><strong>PACIENTE</strong><strong> : NUEVO REGISTRO</strong></div></td>
      </tr>
      <tr>
        <td width="15%" bgcolor="#D1F09D"><span class="Estilo5">NOMBRE</span></td>
        <td width="2%" bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td width="27%" bgcolor="#D6E9DE"><label>
          <input type="text" name="nombre" id="nombre" onKeypress="sololetras(this);"/>
        </label></td>
        <td width="23%" bgcolor="#D1F09D"><span class="Estilo5">ESTERILIZADO</span></td>
        <td width="8%" bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td width="25%" bgcolor="#D6E9DE"><label>
          <input type="text" name="esterilizado" id="esterilizado" size="10" maxlength="1" onKeypress="sololetras(this);"/>
        </label></td>
      </tr>
      <tr>
        <td bgcolor="#D1F09D"><span class="Estilo5">TAMAÑO</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="tamano" id="tamano" maxlength="8" onKeypress="sololetras(this);"/>
        </label></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">ACTIVIDAD</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="actividad" id="actividad" maxlength="8" onKeypress="sololetras(this);"/>
        </label></td>
      </tr>
      <tr>
        <td bgcolor="#D1F09D"><span class="Estilo5">PESO</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="peso" id="peso" maxlength="3" onkeyUp="return ValNumero(this);" onchange="0"/>
        </label></td>
        
        
        <td bgcolor="#D1F09D"><span class="Estilo5">FECHA NAC</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="fchnac" id="fchnac" maxlength="10" value="dd/mm/aaaa"/>
        </label></td>
        </tr>
        <tr>
                <td bgcolor="#D1F09D"><span class="Estilo5">ESPECIE</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="especie" id="especie" maxlength="12" onKeypress="sololetras(this);"/>
        </label></td>
        
        
                <td bgcolor="#D1F09D"><span class="Estilo5">RAZA</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="raza" id="raza" maxlength="10" onKeypress="sololetras(this);"/>
        </label></td>
        </tr>
        <tr>
                <td bgcolor="#D1F09D"><span class="Estilo5">GENERO</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="genero" id="genero" size="10" maxlength="1" onKeypress="sololetras(this);"/>
        </label></td>
        
                <td bgcolor="#D1F09D"><span class="Estilo5">TIPO SANGRE</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="tiposangre" id="tiposangre" size="10" maxlength="3" onKeypress="sololetras(this);"/>
        </label></td>
        </tr>
        <tr>
                <td bgcolor="#D1F09D"><span class="Estilo5">Id CLIENTE</span></td>
        <td bgcolor="#D1F09D"><span class="Estilo5">:</span></td>
        <td bgcolor="#D6E9DE"><label>
          <input type="text" name="idCliente" id="idCliente" size="10" maxlength="11" onkeyUp="return ValNumero(this);" onchange="0"/>
        </label></td>
        
      </tr>

    
        <tr>
        <td colspan="2" bgcolor="#CCCCCC"><label>
          <div align="center">
            <input type="submit" name="button" id="button" value="Guardar" />
            </div>
        </label></td>
        <td bgcolor="#CCCCCC"><label>
          <div align="center">
            <input type="submit" name="button2" id="button2" value="Cancelar" />
            </div>
        </label></td>
      </tr>
    </table>
  </form>
</div>  
</body>
</html>

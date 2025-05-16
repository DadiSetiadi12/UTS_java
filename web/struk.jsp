<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="Tiket.Film" %>

<%
    String nama = request.getParameter("nama");
    int jumlah = Integer.parseInt(request.getParameter("jumlah"));
    int filmIndex = Integer.parseInt(request.getParameter("filmIndex"));
    String jam = request.getParameter("jam");
    
    
    List<Film> films = (List<Film>) session.getAttribute("films");
    Film selectedFilm = films.get(filmIndex);
    int total = jumlah * selectedFilm.harga;
%>

<html>
<head><title>Struk Pemesanan</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
   <div class="container">
        <h1 class="mb-4">Struk Pemesanan</h1>
        <table class="table table-striped">
            <tr>
                <th>Nama Pemesan</th>
                <td><%= nama %></td>
            </tr>
            <tr>
                <th>Film</th>
                <td><%= selectedFilm.getJudul() %></td>
            </tr>
            <tr>
                <th>Jam Tayang</th>
                <td><%= jam %></td>
            </tr>
            <tr>
                <th>Jumlah Tiket</th>
                <td><%= jumlah %></td>
            </tr>
            <tr>
                <th>Total Harga</th>
                <td><strong>Rp <%= total %></strong></td>
            </tr>
        </table>
        <a href="index.jsp" class="btn btn-secondary">Kembali ke Daftar Film</a>
    </div>
</body>
</html>

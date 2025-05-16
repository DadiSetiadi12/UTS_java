<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="Tiket.Film" %>

<%
    List<Film> films = (List<Film>) session.getAttribute("films");
%>
<html>
<head><title>Form Pemesanan</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
</head>
<body>
    <d<body>
    <div class="container">
        <h1 class="mb-4">Form Pemesanan Tiket</h1>
        <form action="struk.jsp" method="post">
            <div class="mb-3">
                <label>Nama Pemesan</label>
                <input type="text" name="nama" class="form-control" required/>
            </div>

            <div class="mb-3">
                <label>Jumlah Tiket</label>
                <input type="number" name="jumlah" class="form-control" required/>
            </div>

            <div class="mb-3">
                <label>Pilih Film</label>
                <select name="filmIndex" class="form-select" id="filmSelect" onchange="updateJamTayang()">
                    <% if (films != null) { 
                        for (int i = 0; i < films.size(); i++) { 
                            Film film = films.get(i); %>
                            <option value="<%= i %>"><%= film.getJudul() %> - Rp <%= film.getHarga() %></option>
                        <% } 
                    } else { %>
                        <option value="">Tidak ada film tersedia</option>
                    <% } %>
                </select>
            </div>

            <div class="mb-3">
                <label>Pilih Jam Tayang</label>
                <select name="jamTayang" class="form-select" id="jamTayangSelect">
                    <% if (films != null && !films.isEmpty()) { 
                        for (String jam : films.get(0).getJadwal()) { %>
                            <option value="<%= jam %>"><%= jam %></option>
                        <% } 
                    } else { %>
                        <option value="">Tidak ada jam tayang tersedia</option>
                    <% } %>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">Cetak Struk</button>
        </form>
    </div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="Tiket.Film" %>

<%
    List<Film> daftarFilm = new ArrayList<>();
    daftarFilm.add(new Film("Avengers: Endgame", "Action", 180, 50000, Arrays.asList("12:00", "15:00", "18:00")));
    daftarFilm.add(new Film("Naruto", "Action", 105, 40000, Arrays.asList("10:00", "13:00", "16:00")));
    daftarFilm.add(new Film("Inception", "Sci-Fi", 150, 55000, Arrays.asList("14:00", "17:00", "20:00")));

    session.setAttribute("films", daftarFilm);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Daftar Film</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .film-card {
            border: 1px solid #f0f0f0;
            border-radius: 10px;
            padding: 20px;
            background-color: #fff;
            transition: box-shadow 0.3s ease;
        }

        .film-card:hover {
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        .badge-jam {
            margin: 2px;
            background-color: #e6f7ff;
            color: #1890ff;
            font-weight: 500;
        }

        .film-img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        body {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
<div class="container py-5">
    <h1 class="mb-4 text-center">🎬 Daftar Film</h1>

    <div class="row g-4">
        <% for (Film f : daftarFilm) {
            String imgUrl = "";
            switch (f.getJudul()) {
                case "Avengers: Endgame":
                    imgUrl = "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg";
                    break;
                case "Naruto":
                    imgUrl = "https://upload.wikimedia.org/wikipedia/en/9/94/NarutoCoverTankobon1.jpg";
                    break;
                case "Inception":
                    imgUrl = "https://upload.wikimedia.org/wikipedia/en/2/2e/Inception_%282010%29_theatrical_poster.jpg";
                    break;
                default:
                    imgUrl = "https://via.placeholder.com/200x300?text=No+Image";
            }
        %>
            <div class="col-md-4">
                <div class="film-card">
                    <img src="<%= imgUrl %>" alt="Poster <%= f.getJudul() %>" class="film-img"/>
                    <h5><%= f.getJudul() %></h5>
                    <p class="mb-1"><strong>Genre:</strong> <%= f.getGenre() %></p>
                    <p class="mb-1"><strong>Durasi:</strong> <%= f.getDurasi() %> menit</p>
                    <p class="mb-1"><strong>Harga:</strong> Rp <%= f.getHarga() %></p>
                    <p class="mb-1"><strong>Jam Tayang:</strong><br>
                        <% for (String jam : f.getJadwal()) { %>
                            <span class="badge badge-jam"><%= jam %></span>
                        <% } %>
                    </p>
                </div>
            </div>
        <% } %>
    </div>

    <div class="text-center mt-5">
        <a href="formPesan.jsp" class="btn btn-primary btn-lg">Pesan Tiket</a>
    </div>
</div>
</body>
</html>

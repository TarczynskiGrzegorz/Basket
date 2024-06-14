<%--
  Created by IntelliJ IDEA.
  User: gtarczynski
  Date: 08.06.2024
  Time: 00:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary"  data-bs-theme="dark">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/"></a>
                </li>
            </ul>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="fa fa-id-badge btn  btn-light" aria-current="page" href="/login">Sign in</a>
                </li>
                <li class="nav-item">
                    <a class="fa fa-id-badge btn btn-primary" aria-current="page" href="/registry">Sign up</a>
                </li>
            </ul>


        </div>
    </div>
</nav>
<%--start--%>
<%--<a href="/login">--%>
<%--    Sign in--%>
<%--</a>--%>
<%--<a href="/registry">--%>
<%--    Sign up--%>
<%--</a>--%>

<div class="container-fluid">
    <div class="row">
        <p class="text-center btn btn-success">Oszczędzaj czas i pieniądze ! Apka wspomagająca tworzenie efektywnej listy zakupów. Kupuj to czego potrzebujesz!</p>
    </div>
    <div class="row">


        <div class="col-sm-6">
            <table class="table">
                <thead>
                <tr class="table-primary">
                    <th scope="col">Product</th>
                    <th scope="col">Amount</th>
                </tr>
                </thead>
                <tbody>

                <tr class="table-secondary">
                    <td> Blok czekoladowy</td>
                    <td></td>
                </tr>

                <tr>
                    <td>masło</td>
                    <td>200 g</td>
                </tr>

                <tr>
                    <td>mleko w proszku</td>
                    <td>400 g</td>
                </tr>

                <tr>
                    <td>kakao</td>
                    <td>50 g</td>
                </tr>

                <tr>
                    <td>cukier</td>
                    <td>200 g</td>
                </tr>

                <tr>
                    <td>mleko</td>
                    <td>200 ml</td>
                </tr>

                <tr>
                    <td>herbatniki</td>
                    <td>10 pcs</td>
                </tr>

                <tr>
                    <td>rodzynki</td>
                    <td>100 g</td>
                </tr>


                <tr class="table-secondary">
                    <td> Jajecznica z kurkami</td>
                    <td></td>
                </tr>

                <tr>
                    <td>jajko</td>
                    <td>6 pcs</td>
                </tr>

                <tr>
                    <td>kurki</td>
                    <td>200 g</td>
                </tr>

                <tr>
                    <td>śmietana 30%</td>
                    <td>30 ml</td>
                </tr>

                <tr>
                    <td>olej</td>
                    <td>15 ml</td>
                </tr>

                <tr>
                    <td>sól</td>
                    <td>30 g</td>
                </tr>





                </tbody>
            </table>
        </div>

        <div class="col-sm-6">
            <table class="table">
                <thead>
                <tr class="table-info">
                    <th scope="col">Product</th>
                    <th scope="col">Amount</th>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <td>kurki g : </td>
                    <td>200</td>
                </tr>

                <tr>
                    <td>cukier g : </td>
                    <td>200</td>
                </tr>

                <tr>
                    <td>mleko w proszku g : </td>
                    <td>400</td>
                </tr>

                <tr>
                    <td>jajko pcs : </td>
                    <td>6</td>
                </tr>

                <tr>
                    <td>olej ml : </td>
                    <td>15</td>
                </tr>

                <tr>
                    <td>mleko ml : </td>
                    <td>300</td>
                </tr>

                <tr>
                    <td>kakao g : </td>
                    <td>50</td>
                </tr>

                <tr>
                    <td>śmietana 30% ml : </td>
                    <td>30</td>
                </tr>

                <tr>
                    <td>rodzynki g : </td>
                    <td>100</td>
                </tr>

                <tr>
                    <td>herbatniki pcs : </td>
                    <td>10</td>
                </tr>

                <tr>
                    <td>sól g : </td>
                    <td>45</td>
                </tr>

                <tr>
                    <td>masło g : </td>
                    <td>300</td>
                </tr>

                <tr>
                    <td>schab g : </td>
                    <td>600</td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>

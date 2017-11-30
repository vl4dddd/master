package com.markelov.rbp107;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/* Объявляем класс наследующийся от HttpServlet и переопределяющий два его метода
doGet(HttpServletRequest req, HttpServletResponse resp) и
doPost(HttpServletRequest req, HttpServletResponse resp)
 */
public class MainServlet extends HttpServlet {

    /**
     * Метод загружающий страницу str.jsp,
     * метод срабатывает при запросе типа GET
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Загрузка страницы str.jsp
        req.getRequestDispatcher("str.jsp").forward(req, resp);
    }

    /**
     * Метод вычисляющий площадь трапециии и выводящий результат на экран
     * метод срабатывает при запросе на урл /
     * тип запроса POST
     *
     * @param req объект-запрос
     * @param resp объект-ответ
     * @throws ServletException исключение типа ServletException
     * @throws IOException исключение типа IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // Получаем строкове значение параметра a и заменяем , на .
        String a = req.getParameter("a").replace(",", ".");
        // Преобразуем строковое значение параметра a в числовое типа Double
        Double a_value = new Double(a);

        // Получаем строкове значение параметра b и заменяем , на .
        String b = req.getParameter("b").replace(",", ".");
        // Преобразуем строковое значение параметра b в числовое типа Double
        Double b_value = new Double(b);

        // Получаем строкове значение параметра h и заменяем , на .
        String h = req.getParameter("h").replace(",", ".");
        // Преобразуем строковое значение параметра h в числовое типа Double
        Double h_value = new Double(h);

        // Вычисляем площадь трапеции и кладем результат в объект result типа Double
        Double result = 0.5 * (a_value + b_value) * h_value;

        // Устанавливаем значения атрибутам
        req.setAttribute("a", req.getParameter("a"));
        req.setAttribute("b", req.getParameter("b"));
        req.setAttribute("h", req.getParameter("h"));
        req.setAttribute("result", result.toString().replace(".", ","));

        // Загрузка страницы str.jsp
        req.getRequestDispatcher("str.jsp").forward(req, resp);
    }

}

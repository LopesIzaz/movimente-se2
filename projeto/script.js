document.addEventListener("DOMContentLoaded", function() {
    const daysInMonth = 31;  // Dezembro tem 31 dias
    const markedDays = [];  // Dias marcados para Dezembro
    const exerciseDaysCount = [0, 0, 0, 0, 0];  // Contadores para as 5 semanas de Dezembro
    const weekMaxDays = 7;  // Máximo de 7 dias por semana
    const motivationalMessages = [
        "O importante é começar! Continue assim!",   // 1 dia
        "Muito bem! Você já está criando o hábito. Continue firme!", // 2 dias
        "Está indo muito bem! Você está criando um hábito poderoso. Continue assim!",  // 3 dias
        "Quase lá! Cada passo é um progresso, continue com tudo!",  // 4 dias
        "Incrível! Você está alcançando seus objetivos e a cada dia fica mais forte!",  // 5 dias
        "Muito bom! Você está dominando essa rotina!",  // 6 dias
        "Perfeito! Você conseguiu a semana toda, continue assim!", // 7 dias
        "Você está arrasando! 10 dias seguidos de exercícios é uma grande conquista, continue firme!" // 10 dias
    ];

    // Função para criar o calendário de Dezembro
    function createCalendar() {
        const calendarDaysContainer = document.querySelector('.calendar-days');
        const monthNameElement = document.getElementById('month-name');

        // Limpa os dias do calendário anterior
        calendarDaysContainer.innerHTML = '';

        // Atualiza o nome do mês
        monthNameElement.textContent = `Dezembro 2024`;

        // Cria os dias do mês
        for (let day = 1; day <= daysInMonth; day++) {
            const dayElement = document.createElement('div');
            dayElement.classList.add('day');
            dayElement.textContent = day;
            dayElement.dataset.day = day;
            dayElement.addEventListener('click', () => markDay(dayElement));

            calendarDaysContainer.appendChild(dayElement);
        }
    }

    // Função para marcar um dia de exercício
    function markDay(dayElement) {
        const day = parseInt(dayElement.textContent);
        
        if (dayElement.classList.contains('marked')) {
            dayElement.classList.remove('marked');
            // Remove o dia do array
            const index = markedDays.indexOf(day);
            if (index !== -1) {
                markedDays.splice(index, 1);
            }
        } else {
            dayElement.classList.add('marked');
            // Adiciona o dia ao array
            markedDays.push(day);
        }

        updateExerciseDaysCount();  // Atualiza o contador de dias por semana
        updateWeeklyChart();  // Atualiza o gráfico de exercícios por semana
        displayMotivationalMessage();  // Exibe a mensagem motivacional
    }

    // Função para atualizar o contador de dias de exercício por semana
    function updateExerciseDaysCount() {
        // Zera os contadores de cada semana
        exerciseDaysCount.fill(0);

        // Calcula em qual semana cada dia se encontra e incrementa
        markedDays.forEach(day => {
            const week = Math.floor((day - 1) / weekMaxDays);  // Calcula a semana (0 a 4)
            exerciseDaysCount[week]++;
        });
    }

    // Função para exibir a mensagem motivacional baseada na quantidade de dias
    function displayMotivationalMessage() {
        const totalMarkedDays = markedDays.length;

        // Exibe a mensagem motivacional conforme os dias marcados
        let message = "";
        if (totalMarkedDays === 1) {
            message = motivationalMessages[0];  // 1 dia
        } else if (totalMarkedDays === 2) {
            message = motivationalMessages[1];  // 2 dias
        } else if (totalMarkedDays === 3) {
            message = motivationalMessages[2];  // 3 dias
        } else if (totalMarkedDays === 4) {
            message = motivationalMessages[3];  // 4 dias
        } else if (totalMarkedDays === 5) {
            message = motivationalMessages[4];  // 5 dias
        } else if (totalMarkedDays === 6) {
            message = motivationalMessages[5];  // 6 dias
        } else if (totalMarkedDays === 7) {
            message = motivationalMessages[6];  // 7 dias
        } else if (totalMarkedDays >= 10) {
            message = motivationalMessages[7];  // 10 dias
        }

        // Exibe a mensagem motivacional na página
        const motivationalMessageElement = document.getElementById('motivational-message');
        motivationalMessageElement.textContent = message;

        if (message !== "") {
            motivationalMessageElement.style.display = 'block';  // Exibe a mensagem
        } else {
            motivationalMessageElement.style.display = 'none';  // Esconde a mensagem
        }
    }

    // Função para atualizar o gráfico de exercícios por semana
    function updateWeeklyChart() {
        const ctx = document.getElementById('weekly-chart-canvas').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Semana 1', 'Semana 2', 'Semana 3', 'Semana 4', 'Semana 5'],
                datasets: [{
                    label: 'Exercícios por Semana',
                    data: exerciseDaysCount,  // Dias de exercício por semana
                    backgroundColor: ['#FFB74D', '#4CAF50', '#2196F3', '#FF9800', '#9C27B0'],
                    borderColor: ['#FF9800', '#388E3C', '#1976D2', '#FF5722', '#7B1FA2'],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        max: 7  // Máximo de 7 dias
                    }
                }
            }
        });
    }

    // Inicializar o calendário de Dezembro
    createCalendar();

});

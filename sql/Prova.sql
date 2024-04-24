CREATE DATABASE  IF NOT EXISTS `formulario_login` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `formulario_login`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formulario_login
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `nome` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(8) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('emerson','acreemerson@gmail.com','12345678'),('erick','erick@gmail.com','12345657'),('marx','Marx@gmail.com','45318957');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 15:03:59
CREATE DATABASE  IF NOT EXISTS `ferramentas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ferramentas`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ferramentas
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ferramentas`
--

DROP TABLE IF EXISTS `ferramentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ferramentas` (
  `nome` varchar(40) NOT NULL,
  `descricao` text NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ferramentas`
--

LOCK TABLES `ferramentas` WRITE;
/*!40000 ALTER TABLE `ferramentas` DISABLE KEYS */;
INSERT INTO `ferramentas` VALUES ('5 porquês','Mesmo que você use o SIPOC para compreender seus processos, o kanban e o 5S para eliminar os desperdícios, e o FMEA e a matriz de riscos para gerenciar riscos, que problemas podem ocorrer. \n\nAssim como o diagrama de Ishikawa, os 5 porquês é um método voltado para análise da causa raiz. \n\nSimples, seu funcionamento é, basicamente, questionar “por que” diante de toda causa identificada, até encontrar a verdadeira causa do problema. Como, normalmente, você precisa de cinco motivos para chegar à causa raiz, a ferramenta ficou conhecida por esse nome.'),('5W2H','A ferramenta 5W2H auxilia na elaboração de planos de ação e projetos. Seu nome se refere aos itens do checkpoint que você precisa fazer antes de iniciar os trabalhos. São eles:\n\n5W:\n\nWhat? (O que será feito?)\nWhy? (Por que será feito?)\nWhere? (Onde será feito?)\nWhen? (Quando será feito?)\nWho (Por quem será feito?)\n2H:\n\nHow? (Como será feito?)\nHow much? (Quanto vai custar?)\nUma variação mais simples do 5W2H é o 3W, que envolve apenas o what, when e who.'),('Análise PEST','A Análise PEST examina os fatores Políticos, Econômicos, Sociais e Tecnológicos que podem influenciar o desempenho da empresa. \n\nA ideia, então, é separar esses fatores em tópicos e, em um exercício de pesquisa e raciocínio, listar as tendências relacionadas a eles que podem ter algum reflexo no negócio. Para isso, é preciso entender quais são os elementos externos considerados relevantes para essa análise.\n\nEssa análise macroambiental é crucial para o planejamento estratégico, pois ajuda a prever tendências e preparar a empresa para mudanças externas.'),('Análise SWOT','A Análise SWOT é uma ferramenta estratégica que permite às empresas avaliarem suas Forças (Strengths), Fraquezas (Weaknesses), Oportunidades (Opportunities) e Ameaças (Threats).\n\nEla é fundamental no planejamento estratégico por oferecer um panorama claro do ambiente interno e externo da organização. Esta análise ajuda a identificar áreas onde a empresa tem vantagem competitiva, bem como áreas que precisam de desenvolvimento ou proteção contra fatores externos adversos.\n\nNo Scopi, gestores podem utilizar esta ferramenta para alinhar objetivos estratégicos com o diagnóstico SWOT, priorizando ações que maximizem o uso de forças e oportunidades enquanto minimizam o impacto de fraquezas e ameaças.'),('Balancedscorecard','O balance scorecard – BSC é uma ferramenta de gestão que pode ser aplicada ao universo da qualidade a fim de integrar e balancear indicadores de desempenho de acordo com quatro perspectivas:\n\nFinanceira\nCliente\nProcessos internos e\nAprendizado e crescimento.\nApós reunir as informações relacionadas ao principal objetivo da empresa, KPIs necessários em cada perspectiva, metas e planos de execução, você cria um mapa estratégico conectando todas as informações entre si.'),('Cartas de controle','As cartas de controle são um gráfico para monitorar como uma métrica se comporta ao longo do tempo, evidenciando alterações a partir de um valor esperado. Logo, a função dessa ferramenta é mandar um sinal quando alguma coisa se modifica.'),('CicloPDCA','O Ciclo PDCA (Plan-Do-Check-Act) é um método iterativo de gestão focado na melhoria contínua dos processos. \n\nEle orienta as equipes a planejar (Plan) ações para atingir metas, executar (Do) o plano, verificar (Check) os resultados para garantir que os objetivos foram alcançados e agir (Act) de acordo com o que foi aprendido, ajustando os processos conforme necessário.\n\nUtilizando o Scopi, as empresas podem integrar o Ciclo PDCA em seu planejamento estratégico, monitorando e ajustando continuamente suas estratégias para melhorar a performance.'),('Curva de Valor','A Curva de Valor é uma ferramenta de análise competitiva que ajuda a identificar como a empresa se posiciona em relação aos concorrentes nos fatores que mais importam para os clientes.\n\nO Scopi pode ser usado para mapear a Curva de Valor, ajudando gestores a visualizar oportunidades de inovação e diferenciação que podem ser exploradas para criar novos espaços de mercado.'),('Diagrama de dispersão','O diagrama de dispersão é um gráfico que exibe a relação entre duas variáveis, a fim de identificar correlações entre ambas, como causa e efeito. Por exemplo: se o valor de X aumenta, o de Y também aumenta? Se o valor de X é tal, qual o valor provável de Y?\n\nEssas informações permitem que estimemos e tiremos conclusões no futuro, sem necessariamente dispôr de ambas as medidas.'),('Diagrama de Ishikawa','O Diagrama de Ishikawa, também conhecido como Diagrama Espinha de Peixe, é utilizado para identificar as causas raízes de um problema específico. \n\nÉ uma ferramenta visual que organiza em categorias as potenciais causas de um problema, facilitando a análise e a solução.\n\nNo ambiente do Scopi, isso significa que gestores podem mapear processos e problemas, identificar as causas fundamentais e planejar intervenções eficazes, tudo isso dentro de uma interface amigável e integrada com outras ferramentas de gestão.'),('Diagrama de Pareto','O Diagrama de Pareto baseia-se no princípio de que 80% dos resultados vêm de 20% das causas. Isto é, podemos fazer uso da proporção 80/20 para definir a relação em diferentes circunstâncias.\n\nIsso quer dizer que, ao resolver as principais causas dos problemas, cerca de 80% dos problemas serão solucionados. Vamos exemplificar essa proporção com alguns cenários:'),('Fluxograma','Fluxogramas são representações visuais dos passos ou procedimentos de um processo. Eles ajudam a entender o fluxo de trabalho, identificar gargalos e ineficiências e facilitar a comunicação entre as equipes.'),('Folhas de verificação','Você contabiliza ocorrências por local, medições obtidas, problemas de acordo com suas causas a fim de verificar como elas se comportam? \n\nA folha de verificação ajuda a fazer isso. Criada pelo mesmo Ishikawa do diagrama da espinha de peixe, ela é uma tabela de registro de ocorrências de acordo com uma classificação, medida, local ou tipo de evento previamente definido. Visualmente, ela é uma tabela com marcações, o que facilita, portanto, a interpretação visual. \n\nDas ferramentas da qualidade, ela é uma das mais simples de operacionalizar. Por exemplo, se você tem as causas, pode começar a contabilizar o número de ocorrências relacionadas a cada uma delas. Depois, jogar os dados em um Diagrama de Pareto e ver qual é a principal causa de problemas.\n\nAliás, vamos conhecer o diagrama de Pareto, que é a quarta ferramenta de gestão da qualidade.'),('Histograma','O histograma apresenta graficamente a frequência relativa de uma mesma variável, de modo a exibir seu padrão de distribuição ou incidência em faixas previamente estabelecidas. \n\nO objetivo é identificar oportunidades de melhoria, em um nível de detalhe mais profundo, para melhorar essa distribuição.'),('Kaizen A3','Kaizen – que, em português, significa “mudança para melhor” – é um método para guiar a construção da melhoria em um processo contínuo, feito em vários pequenos projetos. \n\nSua aplicação tem quatro passos:\n\nPreparação\nImplementação\nAcompanhamento\nPróximos passos'),('Kanban','Kanban, literalmente, designa um cartão. No mundo da produção, representa um pedido ou uma compra que puxa a produção de um produto ou serviço até a entrega ao cliente.  \n\nO kanban, por isso, é como o sistema puxado – contraposto a um sistema empurrado – se materializa na produção just-in-time. Criado por Taiichi Ohno dentro da Toyota, ele parte da premissa de que fazer para a entrega, e não apenas para o estoque, gera mais valor para o cliente, mais engajamento dos colaboradores e mais melhoria na produção.\n\nA razão disso é que o kanban tem a virtude de gerar urgência, revelando esperas na produção e a ação rápida de correção.\n\nSua formulação mais simples é por meio de três colunas: to do, doing e done.'),('Lean','A Metodologia Lean visa eliminar desperdícios e otimizar processos, entregando mais valor aos clientes com menos recursos. Ela enfatiza a eficiência, a redução de custos e a melhoria da qualidade.\n\nEm outras palavras, podemos dizer que essa metodologia busca fazer análises de modo que seja possível executar as demandas com o menor esforço e menor quantidade de recursos possíveis, mas buscando entregas de alta qualidade.\n\nCom o Scopi, as organizações podem aplicar princípios Lean ao mapear processos, identificar desperdícios e implementar mudanças que tornem as operações mais ágeis e menos custosas, ao mesmo tempo mantendo ou melhorando a qualidade do produto ou serviço oferecido.'),('MASP','O MASP é uma metodologia para o tratamento de ocorrências. Também chamada de QC-Story – Quality Control Story, ela é uma metodologia para gerenciar o ciclo de tratamento de uma ocorrência, da descoberta das causas até a padronização da solução.\n\nAssim como ferramentas de análise de causa, ela tem particular ênfase na descoberta das causas dos problemas identificados. Mas seu fluxo é estruturado de modo a auxiliar a tomada de decisão em relação a planos de ação e métricas de verificação.\n\nO MASP tem 8 passos. São eles:\n\nIdentificação\nObservação\nAnálise\nPlano de ação\nAção\nVerificação\nPadronização\nConclusão.'),('Matriz de risco','A matriz de risco é um ferramenta de gerenciamento de riscos que auxilia na análise de um risco de acordo com a probabilidade e o impacto. \n\nGeralmente é construída em uma estrutura 3×3 ou 5×5, com cada quadro representado um ponto da escala de probabilidade e impacto. Ao avaliar cada risco, você determinará, dentro da matriz, se ele pode ser retido ou deve ser mitigado e evitado, de acordo com o apetite a riscos da empresa.'),('Matriz GUT','A matriz GUT é uma ferramenta de priorização baseada em três critérios:\n\nG (gravidade)\nU (urgência) e\nT (tendência).\nPor meio de uma escala que vai de 1 a 5, ela estabelece uma pontuação para cada item que deve ser priorizado.'),('Metodologia 5S','A metodologia 5S é uma guia para avaliar tudo o que está presente em um espaço, com vistas a eliminar o desperdício: removendo o que é desnecessário, organizando as coisas de forma lógica, conservando o ambiente limpo e mantendo esse ciclo em andamento.\n\nO programa se baseia em cinco premissas, traduzidas como “sensos”:\n\nSeiri (senso de utilização)\nSeiton (senso de organização)\nSeiso (senso de limpeza)\nSeiketsu (senso de padronização e saúde)\nShitsuke (senso de disciplina ou autodisciplina).'),('PDCA','PDCA está entre as ferramentas da qualidade mais conhecidas, porque se adapta a qualquer situação.\n\nEla estrutura a gestão de projetos com base em quatro pilares básicos, dos quais se derivam seu nome:\n\nPlanejar (plan)\nExecutar (do)\nVerificar (check)\nAgir (act).'),('PFMEA','O PFMEA é uma metodologia de análise da severidade e avaliação de prioridade de riscos de acordo com o modo e o efeito da falha. A metodologia trabalha com três indicadores numéricos:\n\nSeveridade\nOcorrência e\nDetecção.\nApós a análise, ela embasa a priorização de ações para evitar ou mitigar o risco, segundo o apetite a riscos da empresa.'),('SIPOC','Fornecedores (suppliers), Entradas (inputs), Atividades (process), Saídas (outputs) e Clientes (customers): identificando esses cinco elementos você tem uma visão clara sobre o seu processo.\n\nO SIPOC está entre as ferramentas de gestão visual para o mapeamento de processos mais usadas. A própria ISO 9001 identifica os elementos de sua abordagem de processo com base nela.'),('Sixsigma:DMAIC','Acrônimo de Definir, Mensurar, Analisar, Melhorar (do inglês Improve) e Controlar, DMAIC é uma metodologia sistemática de cinco passos para a resolução de problemas e melhoria de processos dentro do six sigma.\n\nSeus três primeiros passos são focados na identificação do problema ou oportunidade de melhoria. A quarta fase envolve o planejamento e a implementação das ações. E a última a verificação e o monitoramento. \n\nVocê pode aplicar DMAIC contínua ou pontualmente em seus projetos.');
/*!40000 ALTER TABLE `ferramentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-10 15:03:59

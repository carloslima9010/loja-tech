-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: loja_tech
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Temporary view structure for view `vw_detalhes_pedidos`
--

DROP TABLE IF EXISTS `vw_detalhes_pedidos`;
/*!50001 DROP VIEW IF EXISTS `vw_detalhes_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_detalhes_pedidos` AS SELECT 
 1 AS `id_pedido`,
 1 AS `produto`,
 1 AS `quantidade`,
 1 AS `preco_unitario`,
 1 AS `subtotal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_catalogo_produtos`
--

DROP TABLE IF EXISTS `vw_catalogo_produtos`;
/*!50001 DROP VIEW IF EXISTS `vw_catalogo_produtos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_catalogo_produtos` AS SELECT 
 1 AS `id_produto`,
 1 AS `produto`,
 1 AS `categoria`,
 1 AS `preco`,
 1 AS `estoque`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_resumo_compras_clientes`
--

DROP TABLE IF EXISTS `vw_resumo_compras_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_resumo_compras_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_resumo_compras_clientes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `cliente`,
 1 AS `total_pedidos`,
 1 AS `total_gasto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pedidos_clientes`
--

DROP TABLE IF EXISTS `vw_pedidos_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_pedidos_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pedidos_clientes` AS SELECT 
 1 AS `id_pedido`,
 1 AS `cliente`,
 1 AS `email`,
 1 AS `telefone`,
 1 AS `data_pedido`,
 1 AS `status`,
 1 AS `valor_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_produtos_estoque_baixo`
--

DROP TABLE IF EXISTS `vw_produtos_estoque_baixo`;
/*!50001 DROP VIEW IF EXISTS `vw_produtos_estoque_baixo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_produtos_estoque_baixo` AS SELECT 
 1 AS `id_produto`,
 1 AS `nome`,
 1 AS `estoque`,
 1 AS `estoque_minimo`,
 1 AS `preco`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_detalhes_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `vw_detalhes_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_detalhes_pedidos` AS select `ip`.`id_pedido` AS `id_pedido`,`pr`.`nome` AS `produto`,`ip`.`quantidade` AS `quantidade`,`ip`.`preco_unitario` AS `preco_unitario`,`ip`.`subtotal` AS `subtotal` from (`itens_pedido` `ip` join `produtos` `pr` on((`ip`.`id_produto` = `pr`.`id_produto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_catalogo_produtos`
--

/*!50001 DROP VIEW IF EXISTS `vw_catalogo_produtos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_catalogo_produtos` AS select `p`.`id_produto` AS `id_produto`,`p`.`nome` AS `produto`,`c`.`nome` AS `categoria`,`p`.`preco` AS `preco`,`p`.`estoque` AS `estoque` from (`produtos` `p` join `categorias` `c` on((`p`.`id_categoria` = `c`.`id_categoria`))) where (`p`.`ativo` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_resumo_compras_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_resumo_compras_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_resumo_compras_clientes` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nome` AS `cliente`,count(`p`.`id_pedido`) AS `total_pedidos`,coalesce(sum(`p`.`valor_total`),0) AS `total_gasto` from (`clientes` `c` left join `pedidos` `p` on(((`c`.`id_cliente` = `p`.`id_cliente`) and (`p`.`status` <> 'cancelado')))) group by `c`.`id_cliente`,`c`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pedidos_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_pedidos_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pedidos_clientes` AS select `p`.`id_pedido` AS `id_pedido`,`c`.`nome` AS `cliente`,`c`.`email` AS `email`,`c`.`telefone` AS `telefone`,`p`.`data_pedido` AS `data_pedido`,`p`.`status` AS `status`,`p`.`valor_total` AS `valor_total` from (`pedidos` `p` join `clientes` `c` on((`p`.`id_cliente` = `c`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_produtos_estoque_baixo`
--

/*!50001 DROP VIEW IF EXISTS `vw_produtos_estoque_baixo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_produtos_estoque_baixo` AS select `produtos`.`id_produto` AS `id_produto`,`produtos`.`nome` AS `nome`,`produtos`.`estoque` AS `estoque`,`produtos`.`estoque_minimo` AS `estoque_minimo`,`produtos`.`preco` AS `preco` from `produtos` where ((`produtos`.`estoque` <= `produtos`.`estoque_minimo`) and (`produtos`.`ativo` = true)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-24 14:33:08
